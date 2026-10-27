.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$ZlkQLm_K6gdY-ViUSpdKbPW_0SM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$ZlkQLm_K6gdY-ViUSpdKbPW_0SM;->f$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScreenageSettingsManager$ZlkQLm_K6gdY-ViUSpdKbPW_0SM;->f$0:Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScreenageSettingsManager;->lambda$observeData$8$ScreenageSettingsManager(Ljava/lang/Integer;)V

    return-void
.end method
