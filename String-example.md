🎯 MBzeGuard: Примеры прокси-строк

Все строки вставляются в поле Proxy String. Конфиг sing-box сгенерируется автоматически.
⚡ Shadowsocks
💡 Обычный SS

ss://YWVzLTI1Ni1nY206RmJwUDJnSStPczJKK1kzdkVhTnVuOUZ2ZjJZYUhNUlN1L1BBdEVqMks1VT0@example.com:80

🧊 Shadowsocks 2022

ss://2022-blake3-aes-128-gcm:base64key:base64salt@example.com:443

Можно встретить и длинные ссылки вида:

ss://MjAyMi1ibGFrZTMtYWVzLTEyOC1nY206...@example.com:443

🔐 VLESS
🧬 Reality

vless://uuid@example.com:443?type=tcp&security=reality&pbk=pubkey&fp=chrome&sni=yahoo.com&sid=id&spx=/&flow=xtls-rprx-vision

🌐 TLS

vless://uuid@example.com:443?type=tcp&security=tls&sni=site.com&fp=chrome

🛰 WS + TLS

vless://uuid@example.com:443?type=ws&security=tls&path=/websocket&sni=site.com&fp=chrome

🚫 Без шифрования

vless://uuid@example.com:443?type=tcp&security=none

📦 Требования

    Установите sing-box:

opkg update && opkg install sing-box

🧪 Примеры нестандартных строк

🔸 VLESS gRPC:

vless://uuid@host:2082?security=reality&sni=cf.com&alpn=h2,http/1.1&type=grpc&encryption=none

🔸 VLESS WS с нестандартным портом:

vless://uuid@host:8443?type=ws&security=tls&path=/any&sni=host.com&fp=chrome

☑️ Поддержка

Если строка не работает — проверь UUID, pbk, host, port и sni. Или просто спроси на t.me/mbzeguard (гипотетическая поддержка).