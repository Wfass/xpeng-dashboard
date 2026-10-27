.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$jO4WRWK8PxMkdbdKG_uCnDRAZvw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$jO4WRWK8PxMkdbdKG_uCnDRAZvw;->f$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$CustomDriveModeSettingManager$jO4WRWK8PxMkdbdKG_uCnDRAZvw;->f$0:Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;->lambda$observeData$5$CustomDriveModeSettingManager(Ljava/lang/Integer;)V

    return-void
.end method
