.class public final synthetic Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$DGzUBVZJZum9r8u7KE2oR6Zw1lI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

.field private final synthetic f$1:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$DGzUBVZJZum9r8u7KE2oR6Zw1lI;->f$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$DGzUBVZJZum9r8u7KE2oR6Zw1lI;->f$1:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$DGzUBVZJZum9r8u7KE2oR6Zw1lI;->f$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/-$$Lambda$XpLightlanuageService$DGzUBVZJZum9r8u7KE2oR6Zw1lI;->f$1:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;->lambda$scheduleEffectTask$1(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService;Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageService$EffectTask;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
