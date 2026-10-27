.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;
.super Landroid/app/DialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# instance fields
.field private Nx:I

.field private mActivity:Landroid/app/Activity;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 214
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/b;I)V
    .locals 1

    .line 216
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 217
    iput p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->Nx:I

    .line 218
    instance-of p2, p1, Landroid/app/Fragment;

    if-eqz p2, :cond_0

    .line 222
    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 223
    return-void

    .line 219
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fragment argument must be an instance of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Landroid/app/Fragment;

    .line 220
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public nb()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->Nx:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 236
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 237
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mActivity:Landroid/app/Activity;

    .line 238
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 283
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 257
    if-eqz p1, :cond_2

    .line 258
    const-string v0, "key_dialog_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->Nx:I

    .line 259
    const-string v0, "key_parent_fragment_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 260
    if-le p1, v1, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/b;

    if-nez v0, :cond_1

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_0

    .line 265
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/b;

    .line 268
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of p1, p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;

    if-eqz p1, :cond_2

    .line 274
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;

    invoke-static {p1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 278
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/b;

    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->Nx:I

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/b;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 303
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 318
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 291
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 295
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 250
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 251
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 253
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 227
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->Nx:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 242
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/wlan/scan/SettingsPreferenceFragment;->na()V

    .line 246
    :cond_0
    return-void
.end method
