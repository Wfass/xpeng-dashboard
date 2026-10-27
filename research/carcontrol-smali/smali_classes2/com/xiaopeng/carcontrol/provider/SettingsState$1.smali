.class Lcom/xiaopeng/carcontrol/provider/SettingsState$1;
.super Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;
.source "SettingsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/provider/SettingsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/provider/SettingsState;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/provider/SettingsState;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "name",
            "value",
            "makeDefault"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/provider/SettingsState$1;->this$0:Lcom/xiaopeng/carcontrol/provider/SettingsState;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/provider/SettingsState$Setting;-><init>(Lcom/xiaopeng/carcontrol/provider/SettingsState;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public isNull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
