.class public abstract Lcom/xiaopeng/carcontrol/view/control/BaseViewControl;
.super Ljava/lang/Object;
.source "BaseViewControl.java"


# static fields
.field public static final ACTION_SHOW_SEAT_HEAT_VENT_DIRECT:Ljava/lang/String; = "seat_heat_vent"

.field public static final SCENE_ID:Ljava/lang/String; = "hvac"


# instance fields
.field public mActivity:Landroidx/appcompat/app/AppCompatActivity;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 0

    return-void
.end method

.method protected onBuildScene(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    return-void
.end method

.method public onCreate(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "view"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/control/BaseViewControl;->mActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 22
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/control/BaseViewControl;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public showSeatHeatVentDialog()V
    .locals 0

    return-void
.end method

.method protected showVuiFloatingLayer(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 59
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method
