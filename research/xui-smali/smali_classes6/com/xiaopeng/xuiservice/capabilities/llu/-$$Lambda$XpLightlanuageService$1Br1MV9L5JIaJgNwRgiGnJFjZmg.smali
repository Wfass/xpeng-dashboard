.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$1Br1MV9L5JIaJgNwRgiGnJFjZmg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$1Br1MV9L5JIaJgNwRgiGnJFjZmg;->f$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$1Br1MV9L5JIaJgNwRgiGnJFjZmg;->f$1:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$1Br1MV9L5JIaJgNwRgiGnJFjZmg;->f$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$1Br1MV9L5JIaJgNwRgiGnJFjZmg;->f$1:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->lambda$scheduleEffectTask$3(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;Landroid/media/MediaPlayer;)V

    return-void
.end method
