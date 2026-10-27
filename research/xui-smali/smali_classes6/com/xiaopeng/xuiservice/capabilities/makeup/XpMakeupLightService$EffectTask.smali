.class Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$EffectTask;
.super Ljava/lang/Object;
.source "XpMakeupLightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectTask"
.end annotation


# instance fields
.field private effect:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

.field private tick:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;)V
    .locals 0
    .param p2, "effect"    # Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$EffectTask;->this$0:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$EffectTask;->tick:I

    .line 112
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$EffectTask;->effect:Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$Effect;

    .line 113
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$EffectTask;->tick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/makeup/XpMakeupLightService$EffectTask;->tick:I

    .line 120
    return-void
.end method
