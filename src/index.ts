import TelegramBot from 'node-telegram-bot-api';
import process from "node:process";
import dotenv from "dotenv"
dotenv.config()

const token = process.env.TELEGRAM_BOT_TOKEN || "absent";
const bot = new TelegramBot(token, {polling: true});

bot.onText(/\/(.+)/, (msg) => {
    const chatId = msg.chat.id;
    bot.sendMessage(chatId, `Received commad { ${msg.text} } from you`);
});


bot.on('message', (msg) => {
    const text = msg.text;
    if (typeof text != "undefined" && text.startsWith("/")) return;
    const chatId = msg.chat.id;
    bot.sendMessage(chatId, `Received message { ${msg.text} } from you`);
});