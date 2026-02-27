'''
NatureCraft注册脚本
'''

import sys
from pathlib import Path
import shutil
import json

# 清空目录
def clear_everthing(directory: Path):
    if not directory.exists():
        return
    for item in directory.iterdir():
        if item.is_file() or item.is_symlink():
            item.unlink()
        elif item.is_dir():
            shutil.rmtree(item)

# 工作路径
base = Path.cwd().resolve()
if not Path(f'{base}/pack.mcmeta').exists():
    print('')
    sys.exit(1)

# 模型文件注册
files = [
    'data/*/naturecraft/model/**/*.json',
    'data/*/naturecraft/template/**/*.json'
]
# 注册表
registry = list()
# 文件计数器
models_count = 0
templates_count = 0
# 清空注册函数目录
for file in files:
    for file_path in base.glob(file):
        namespace = file_path.relative_to(base).parts[1]
        reg_function_directory = Path(f'{base}/data/{namespace}/function/data/model')
        clear_everthing(reg_function_directory)
        reg_function_directory = Path(f'{base}/data/{namespace}/function/data/template')
        clear_everthing(reg_function_directory)
# 注册核心逻辑
for file in files:
    for file_path in base.glob(file):
        if file_path.is_file():
            if file_path.relative_to(base).parts[3] == 'model':
                models_count += 1
            else: templates_count +=1
            # 命名空间
            namespace = file_path.relative_to(base).parts[1]
            # 注册表与注册函数路径
            relative_path = file_path.relative_to(f'{base}/data/{namespace}/naturecraft')

            registry_path = Path(f'{base}/data/{namespace}/tags/function/reg.json')
            function_path = Path(f'{base}/data/{namespace}/function/data/{relative_path.with_suffix('.mcfunction')}')
            # 注册函数ID
            function_id = f'{namespace}:{function_path.relative_to(f'{base}/data/{namespace}/function').with_suffix('').as_posix()}'
            # NBT路径
            nbt_path = '.'.join(function_path.relative_to(f'{base}/data/{namespace}/function/data').with_suffix('').parts)
            # 注册表校验
            registry_path.parent.mkdir(parents=True, exist_ok=True)
            registry_path.touch(exist_ok=True)
            registry.append(f'{function_id}')
            # 注册函数写入
            function_path.parent.mkdir(parents=True, exist_ok=True)
            function_path.touch(exist_ok=True)
            function_path.write_text(f'data modify storage {namespace}:storage {nbt_path} set value {json.dumps(json.load(file_path.open('r', encoding='utf-8')))}', encoding='utf-8')
# 注册表写入
registry_path.write_text(json.dumps({'replace': False, 'values': registry}), encoding='utf-8')

# 统计
print(f'''
注册完成!
#####统计信息#####
处理了 {models_count} 个模型文件
处理了 {templates_count} 个模板文件
##################
''')