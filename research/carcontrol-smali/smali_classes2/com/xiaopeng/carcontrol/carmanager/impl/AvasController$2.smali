.class Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;
.super Landroid/database/ContentObserver;
.source "AvasController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "x0",
            "val$resolver"
        }
    .end annotation

    .line 982
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
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

    .line 985
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string p2, "boot_effect"

    .line 986
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "onChange: "

    const-string v2, "AvasController"

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {v0, p2, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Boot Effect"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->access$102(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 990
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;I)V

    goto :goto_0

    :cond_0
    const-string p2, "boot_effect_before_sw"

    .line 991
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {v0, p2, v3}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Boot Effect before sw ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->access$302(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const-string p2, "avasGearAvhSayhiEnable"

    .line 996
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 997
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController$2;->val$resolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    move v1, v0

    :cond_2
    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->access$400(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Z)V

    :cond_3
    :goto_0
    return-void
.end method
