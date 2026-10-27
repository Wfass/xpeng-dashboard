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

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;->this$0:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->isEnable()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 214
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive. action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LangPresenterImpl"

    invoke-static {v1, v0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.xputils.lang.switch.close"

    .line 216
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    .line 217
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const-string v0, "com.xiaopeng.xputils.lang.modified"

    .line 218
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;->this$0:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    invoke-static {p1, p2}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->access$100(Lcom/xiaopeng/xui/lang/LangPresenterImpl;Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 220
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/xui/lang/LangPresenterImpl$1;->this$0:Lcom/xiaopeng/xui/lang/LangPresenterImpl;

    invoke-static {p1}, Lcom/xiaopeng/xui/lang/LangPresenterImpl;->access$200(Lcom/xiaopeng/xui/lang/LangPresenterImpl;)Lcom/xiaopeng/xui/lang/LangView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/xui/lang/LangView;->clearModifiedViews()V

    :cond_4
    :goto_0
    return-void
.end method
