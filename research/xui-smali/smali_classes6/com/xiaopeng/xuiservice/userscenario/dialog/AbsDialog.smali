.class public interface abstract Lcom/xiaopeng/xuiservice/userscenario/dialog/AbsDialog;
.super Ljava/lang/Object;
.source "AbsDialog.java"


# virtual methods
.method public abstract dismiss()V
.end method

.method public abstract initVuiScene(Ljava/lang/String;Lcom/xiaopeng/speech/vui/VuiEngine;)V
.end method

.method public abstract isShowing()Z
.end method

.method public abstract onDismissUnSubscribe(Lcom/xiaopeng/xuiservice/userscenario/dialog/DialogUtils$MyComboListener;I)V
.end method

.method public abstract setDialogContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/CharSequence;Lcom/xiaopeng/xuimanager/userscenario/UniDialogConfig;Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;)V
.end method

.method public abstract setScreenId(I)V
.end method

.method public abstract setSystemDialog(I)V
.end method

.method public abstract show()V
.end method
