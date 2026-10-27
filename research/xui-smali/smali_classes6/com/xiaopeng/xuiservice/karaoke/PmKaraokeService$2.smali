.class Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$2;
.super Ljava/lang/Object;
.source "PmKaraokeService.java"

# interfaces
.implements Lcom/loostone/puremic/controller/audio/listener/IDongleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->create(Ljava/lang/String;ILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$2;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDongleChanged(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 222
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDongleChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$2;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$200(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 226
    .local v0, "msg":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$2;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$200(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->MicDevChangeCallBack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v0    # "msg":I
    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PmKaraokeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDongleChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public onMicPowerStatusChanged(Z)V
    .locals 4
    .param p1, "b"    # Z

    .line 235
    const-string v0, "PmKaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMicPowerStatusChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$2;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$200(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 238
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 239
    .local v0, "msg":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService$2;->this$0:Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;->access$200(Lcom/xiaopeng/xuiservice/karaoke/PmKaraokeService;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;->MicDevChangeCallBack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v0    # "msg":I
    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PmKaraokeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDongleChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
