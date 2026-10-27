.class Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "LangPresenterImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/lang/LangPresenterImpl;->initBroadcastReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/lang/LangPresenterImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;->this$0:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 208
    if-nez p2, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    return-void

    .line 214
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "action":Ljava/lang/String;
    const-string v1, "LangPresenterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive. action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "com.xiaopeng.xputils.lang.switch.close"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 218
    :cond_2
    const-string v1, "com.xiaopeng.xputils.lang.modified"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;->this$0:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    invoke-static {v1, p2}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->access$100(Lcom/xiaopeng/xui/lang/LangPresenterImpl;Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    :cond_3
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;->this$0:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    invoke-static {v1}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->access$200(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)Lcom/xiaopeng/xui/lang/LangView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/xui/lang/LangView;->clearModifiedViews()V

    .line 223
    :cond_4
    :goto_0
    return-void
.end method
