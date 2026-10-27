.class Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$1;
.super Landroid/database/ContentObserver;
.source "UnitConversionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;Landroid/os/Handler;)V
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

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$1;->this$0:Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
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

    .line 68
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "speed_unit"

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", value = "

    const-string v2, "onChange: "

    const-string v3, "UnitConversionManager"

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v0, p2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$1;->this$0:Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->access$100(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;I)V

    goto :goto_0

    :cond_0
    const-string p2, "air_pressure_unit"

    .line 74
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v0, p2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager$1;->this$0:Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;

    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;->access$200(Lcom/xiaopeng/carcontrol/common/settings/UnitConversionManager;I)V

    :cond_1
    :goto_0
    return-void
.end method
