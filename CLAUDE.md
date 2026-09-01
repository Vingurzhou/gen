# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 项目概述

**gen** 是一个使用 CMake 作为构建系统、vcpkg 作为包管理器的 C++ 项目。目前处于早期开发阶段，结构非常简单。

## 构建系统

### 配置

- **CMake 预设**: 使用 `CMakePresets.json` 定义构建环境
- **编译器**: Clang 17.0.0 (arm64-apple-darwin24.6.0)
- **构建类型**: Debug（默认）
- **输出目录**: `${sourceDir}/out/build/<presetName>` 用于二进制文件，`${sourceDir}/out/install/<presetName>` 用于安装

### 常用命令

```bash
# 清理构建产物
rm -rf out/

# 配置项目
/opt/homebrew/bin/cmake "-DCMAKE_INSTALL_PREFIX=/Users/zhouwenzhe/Code/microsate/televerify/out/install/Clang 17.0.0 arm64-apple-darwin24.6.0" -DCMAKE_C_COMPILER=/usr/bin/clang -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=/Users/zhouwenzhe/Code/vcpkg/scripts/buildsystems/vcpkg.cmake -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE -S /Users/zhouwenzhe/Code/microsate/televerify -B "/Users/zhouwenzhe/Code/microsate/televerify/out/build/Clang 17.0.0 arm64-apple-darwin24.6.0"

# 构建项目
/opt/homebrew/bin/cmake --build "/Users/zhouwenzhe/Code/microsate/televerify/out/build/Clang 17.0.0 arm64-apple-darwin24.6.0" --target televerify

# 直接运行可执行文件
./out/build/Clang\ 17.0.0\ arm64-apple-darwin24.6.0/televerify
```

### 添加依赖

```bash
# 使用 vcpkg 安装包
cmake --preset "Clang 17.0.0 arm64-apple-darwin24.6.0"
```

在 `CMakeLists.txt` 中添加依赖：

```cmake
find_package(<PackageName> REQUIRED)
target_link_libraries(televerify PRIVATE <PackageName>::<PackageName>)
```

## 项目结构

- **CMakeLists.txt**: 主 CMake 配置文件
- **CMakePresets.json**: 构建预设配置
- **vcpkg.json**: vcpkg 依赖清单（当前为空，添加依赖时会填充）
- **main.cpp**: 应用程序入口点
- **out/**: 构建输出目录（已被 gitignore 忽略）

## 开发说明

- 项目使用 monorepo 风格的目录结构来管理构建产物
- 添加依赖时需要同时更新 `vcpkg.json`（作为依赖清单）和 `CMakeLists.txt`
- 所有构建产物都在 `out/` 目录中，不应提交到 git
- 使用提供的 CMake 预设以确保不同机器上的构建环境一致
