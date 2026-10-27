.class Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$5;
.super Ljava/lang/Object;
.source "KaraokeManagerService.java"

# interfaces
.implements Lcom/xiaopeng/sysconfig/SysConfigManager$SysConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    .line 252
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$5;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSysConfigUpdated(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 255
    const-string v0, "karaoke/MicEffectData.json"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService$5;->this$0:Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;->access$600(Lcom/xiaopeng/xuiservice/karaoke/KaraokeManagerService;)V

    .line 258
    :cond_0
    return-void
.end method
