.class Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$3;
.super Ljava/lang/Object;
.source "XpMediaControllerManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;


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

    .line 232
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/controller/info/InfoUtil;->getDefaultMediaInfo()Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->access$102(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager$3;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->access$100(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;)Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;->access$200(Lcom/xiaopeng/xuiservice/mediacenter/controller/XpMediaControllerManager;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 237
    return-void
.end method
