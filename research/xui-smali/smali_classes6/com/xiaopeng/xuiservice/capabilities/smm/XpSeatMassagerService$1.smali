.class Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$1;
.super Ljava/lang/Object;
.source "XpSeatMassagerService.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->initSoundPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    .line 1844
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .line 1847
    const-string v0, "XpSeatMassagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnLoadComplete sampleId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$900()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1850
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$900()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1852
    .local v0, "effect":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService$1;->this$0:Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x7

    .line 1853
    if-nez p3, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    .line 1852
    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;Ljava/util/List;ILjava/lang/String;ILjava/lang/String;)V

    .line 1856
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/smm/XpSeatMassagerService;->access$900()Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1858
    .end local v0    # "effect":Ljava/lang/String;
    :cond_1
    return-void
.end method
