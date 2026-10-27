.class Lcom/xiaopeng/carcontrol/App$1;
.super Landroid/database/ContentObserver;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/App;->observeSettingLowSpdEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/App;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/App;Landroid/os/Handler;)V
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

    .line 276
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/App$1;->this$0:Lcom/xiaopeng/carcontrol/App;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfChange"
        }
    .end annotation

    .line 279
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasSmartControl;->onLowSpdSwChanged()V

    return-void
.end method
