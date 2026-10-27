.class Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$2;
.super Ljava/lang/Object;
.source "UserSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;->dN(I)V
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

    .line 128
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity$2;->UI:Lcom/xiaopeng/devtools/view/usersettings/UserSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 131
    const-string p1, "UserSettingsActivity"

    const-string v0, "showLoadingDialog onCancel"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    return-void
.end method
