.class Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$1;
.super Ljava/lang/Object;
.source "UserSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->nY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UI:Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$1;->UI:Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$1;->UI:Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->a(Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;)Lcom/xiaopeng/xui/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$1;->UI:Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->a(Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;)Lcom/xiaopeng/xui/app/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 112
    :cond_0
    return-void
.end method
