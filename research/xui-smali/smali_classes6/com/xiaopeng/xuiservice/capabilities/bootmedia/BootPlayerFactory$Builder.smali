.class public Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;
.super Ljava/lang/Object;
.source "BootPlayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

.field private final type:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)V
    .locals 0
    .param p1, "type"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;
    .param p2, "processor"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->type:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    .line 19
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    .line 20
    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    .locals 3

    .line 23
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->access$000()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->access$000()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->release()V

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->access$002(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 28
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$1;->$SwitchMap$com$xiaopeng$xuiservice$capabilities$bootmedia$MediaType:[I

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->type:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 36
    :pswitch_0
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->access$002(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    goto :goto_0

    .line 33
    :pswitch_1
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/AnimationPlayer;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->access$002(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 34
    goto :goto_0

    .line 30
    :pswitch_2
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->access$002(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 31
    nop

    .line 40
    :goto_0
    const-string v0, "BootPlayerFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "build, type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->type:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", player="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->access$000()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->access$000()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public play()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;->build()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    move-result-object v0

    .line 47
    .local v0, "player":Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;->play()V

    .line 50
    :cond_0
    return-object v0
.end method
