.class Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;
.super Ljava/lang/Object;
.source "LyricLoader.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->loadLyric(Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

.field final synthetic val$callback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

.field final synthetic val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;->val$callback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 69
    const-string v0, "LyricLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadLyric failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 58
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "body":Ljava/lang/String;
    :goto_0
    const-string v1, "LyricLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLyric onSuccess body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricUtil;->parseLyricResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    move-result-object v1

    .line 61
    .local v1, "lyricInfo":Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;->val$callback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;->val$callback:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;

    invoke-interface {v2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;->onLoadSuccess(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 63
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 65
    :cond_1
    return-void
.end method
