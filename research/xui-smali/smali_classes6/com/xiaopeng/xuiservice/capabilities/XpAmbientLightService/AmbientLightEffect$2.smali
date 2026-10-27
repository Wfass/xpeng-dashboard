.class Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;
.super Ljava/lang/Object;
.source "AmbientLightEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->startSpeechEffect([I[B[B[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

.field final synthetic val$bright_value:B

.field final synthetic val$color_value:B

.field final synthetic val$fade_value:B

.field final synthetic val$groupNum:[I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;[IBBB)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    .line 272
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->val$groupNum:[I

    iput-byte p3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->val$color_value:B

    iput-byte p4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->val$bright_value:B

    iput-byte p5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->val$fade_value:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$SpeechPara;->isEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    nop

    .local v1, "j":I
    :goto_0
    move v0, v1

    .end local v1    # "j":I
    .local v0, "j":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->val$groupNum:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->val$groupNum:[I

    aget v2, v2, v0

    iget-byte v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->val$color_value:B

    iget-byte v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->val$bright_value:B

    iget-byte v5, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->val$fade_value:B

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->setGroupLightData(IBBB)V

    .line 276
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "j":I
    .restart local v1    # "j":I
    goto :goto_0

    .line 279
    .end local v1    # "j":I
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;

    const-string v2, "speechTask"

    invoke-static {v0, v2, v1, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightEffect;Ljava/lang/String;II)V

    .line 281
    :cond_1
    return-void
.end method
