.class Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;
.super Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
.source "ConditionSystemProperty.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertiesValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final cache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 87
    const-string v0, "SystemProperties"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;->cache:Landroid/util/ArrayMap;

    .line 88
    invoke-static {p0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected fetch()Ljava/lang/Long;
    .locals 2

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic fetch()Ljava/lang/Object;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;->fetch()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onStartWatch()V
    .locals 0

    .line 100
    return-void
.end method

.method protected onStopWatch()V
    .locals 0

    .line 105
    return-void
.end method

.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;->cache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionSystemProperty$SystemPropertiesValue;->update()V

    .line 111
    return-void
.end method
