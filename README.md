# Horror Video Automation with n8n

AI-powered horror video generator using n8n workflows. Creates complete YouTube Shorts with voice narration, background music, and atmospheric visuals.

## Features

- Automated horror story generation
- Text-to-speech voice narration
- AI-generated background music
- Atmospheric horror imagery (9:16 aspect ratio)
- Complete video assembly workflow

## APIs Used

- OpenRouter (script generation)
- OpenAI TTS (voice synthesis)
- ElevenLabs (background music)
- Together.ai (image generation)

## Deployment

### Railway.app

1. Fork this repository
2. Connect to Railway.app
3. Deploy using Railway's GitHub integration
4. Set environment variables (see below)

### Environment Variables

```
N8N_HOST=0.0.0.0
N8N_PORT=8080
N8N_BASIC_AUTH_ACTIVE=true
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=your_secure_password
WEBHOOK_URL=https://your-app.railway.app/
N8N_EDITOR_BASE_URL=https://your-app.railway.app/
```

## Setup

1. Deploy to Railway using this repository
2. Access your n8n instance at your Railway URL
3. Import the horror video workflow
4. Configure API credentials for all services
5. Run your first horror video test

## Free Tier Limits

- OpenRouter: 20 requests/minute, 50/day
- OpenAI TTS: $5 free credit (~167 minutes)
- ElevenLabs: 20,000 credits/month (~13 minutes)
- Together.ai: 6 images/minute (free tier)

## Cost Estimation

**Testing Phase:** $0/month (all free tiers)
**Production:** $50-100/month depending on volume

## License

MIT License - Feel free to modify and use for your projects.
