#include <iostream>
#include <string>
#include "gen/qz.json.h"

int main() {
    // 创建一个 Config 对象
    qz::Config config;
    config.mtp.host = "mtp.example.com";
    config.mtp.port = 8080;
    config.rts.host = "rts.example.com";
    config.rts.port = 8081;
    config.uhs.host = "uhs.example.com";
    config.uhs.port = 8082;
    config.gnc.host = "gnc.example.com";
    config.gnc.port = 8083;

    // 转换为 JSON
    qz::json json_data = config;
    std::string json_str = json_data.dump(4);  // 格式化输出，缩进4个空格

    std::cout << "转换为 JSON:" << std::endl;
    std::cout << json_str << std::endl;

    // 从 JSON 解析
    qz::Config parsed_config = json_data.get<qz::Config>();

    std::cout << "\n解析后的配置:" << std::endl;
    std::cout << "MTP - Host: " << parsed_config.mtp.host << ", Port: " << parsed_config.mtp.port << std::endl;
    std::cout << "RTS - Host: " << parsed_config.rts.host << ", Port: " << parsed_config.rts.port << std::endl;
    std::cout << "UHS - Host: " << parsed_config.uhs.host << ", Port: " << parsed_config.uhs.port << std::endl;
    std::cout << "GNC - Host: " << parsed_config.gnc.host << ", Port: " << parsed_config.gnc.port << std::endl;

    return 0;
}