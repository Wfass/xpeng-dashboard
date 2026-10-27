.class public Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;
.super Landroid/app/Activity;
.source "CrashFeedbackActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field CA:Landroid/widget/Button;

.field CB:Landroid/widget/Button;

.field CC:Landroid/widget/TextView;

.field CD:Landroid/widget/TextView;

.field CE:Landroid/view/ViewGroup;

.field private CF:Landroid/view/View$OnLongClickListener;

.field Cz:Landroid/app/ApplicationErrorReport;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    new-instance v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$1;-><init>(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    new-instance v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$2;-><init>(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CF:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->lL()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;Ljava/lang/String;)Z
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->cP(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)Ljava/lang/String;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 1

    .line 136
    if-nez p1, :cond_0

    .line 137
    return-void

    .line 140
    :cond_0
    const-string v0, "android.intent.extra.BUG_REPORT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/ApplicationErrorReport;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CC:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->lM()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CD:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->lN()V

    return-void
.end method

.method private cP(Ljava/lang/String;)Z
    .locals 3

    .line 152
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 157
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 158
    const/4 p1, 0x1

    return p1

    .line 160
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getContent()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    return-object v0

    .line 177
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private lL()V
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->lO()Z

    move-result v0

    .line 79
    sget-object v1, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkAvailabilityChange(), available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CE:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CE:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CB:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CB:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    :cond_2
    return-void
.end method

.method private lM()Ljava/lang/String;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CRASH] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " threw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method private lN()V
    .locals 4

    .line 181
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_submission"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const v0, 0x7f10003c

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_2

    .line 187
    sget-object v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    sget-object v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throw class name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    sget-object v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throw file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throw line number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    sget-object v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Throw method name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    sget-object v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stack trace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->Cz:Landroid/app/ApplicationErrorReport;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_1
    sget-object v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->TAG:Ljava/lang/String;

    const-string v1, "getIntent() was null?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->finish()V

    .line 209
    return-void
.end method

.method private lO()Z
    .locals 1

    .line 212
    const-string v0, "connectivity"

    .line 213
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 215
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const p1, 0x7f0c00f1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->setContentView(I)V

    .line 93
    const p1, 0x7f09014d

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CA:Landroid/widget/Button;

    .line 94
    const p1, 0x7f090374

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CB:Landroid/widget/Button;

    .line 95
    const p1, 0x7f090372

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CC:Landroid/widget/TextView;

    .line 96
    const p1, 0x7f090183

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CD:Landroid/widget/TextView;

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CD:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CF:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    const p1, 0x7f09029a

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CE:Landroid/view/ViewGroup;

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CA:Landroid/widget/Button;

    new-instance v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$3;-><init>(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->CB:Landroid/widget/Button;

    new-instance v0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity$4;-><init>(Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->b(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 132
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->b(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/CrashFeedbackActivity;->lL()V

    .line 121
    return-void
.end method
