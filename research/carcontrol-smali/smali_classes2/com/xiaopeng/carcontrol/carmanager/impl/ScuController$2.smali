.class Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;
.super Landroid/database/ContentObserver;
.source "ScuController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 1784
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selfChange",
            "uri"
        }
    .end annotation

    .line 1787
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ngp_safe_exam_notify"

    .line 1789
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, ", value = "

    const-string v1, "onChange: "

    const-string v2, "ScuController"

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 1790
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ngp_safe_exam"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$102(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1792
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p2, "lcc_safe_exam_notify"

    .line 1793
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1794
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lcc_safe_exam"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$202(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1796
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p2, "mem_park_safe_exam_notify"

    .line 1797
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1798
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mem_park_safe_exam"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$302(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1800
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo p2, "super_vpa_safe_exam_notify"

    .line 1801
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1802
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "super_vpa_safe_exam"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$402(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1804
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p2, "apa_safe_exam_notify"

    .line 1805
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1806
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "apa_safe_exam"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$502(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1808
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$500(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo p2, "super_lcc_safe_exam_notify"

    .line 1809
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1810
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "super_lcc_safe_exam"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getBool(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$602(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1812
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->access$600(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
