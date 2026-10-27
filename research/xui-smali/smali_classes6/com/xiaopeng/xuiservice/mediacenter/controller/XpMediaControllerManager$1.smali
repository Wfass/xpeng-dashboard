.class Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$1;
.super Ljava/lang/Object;
.source "XpMediaControllerManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/lyric/LyricLoader$LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    .line 202
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .line 211
    return-void
.end method

.method public onLoadSuccess(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->access$000(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V

    .line 206
    return-void
.end method
