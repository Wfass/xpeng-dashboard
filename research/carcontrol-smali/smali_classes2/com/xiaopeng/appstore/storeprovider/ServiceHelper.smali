.class public Lcom/xiaopeng/appstore/storeprovider/ServiceHelper;
.super Ljava/lang/Object;
.source "ServiceHelper.java"


# static fields
.field private static final ACTION_DATA_SCHEMA:Ljava/lang/String; = "xp://"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.xiaopeng.resourceservice"

.field private static final SCHEMA_ACTION_CANCEL:Ljava/lang/String; = "cancel/"

.field private static final SCHEMA_ACTION_OPEN:Ljava/lang/String; = "open/"

.field private static final SCHEMA_ACTION_PAUSE:Ljava/lang/String; = "pause/"

.field private static final SCHEMA_ACTION_RESUME:Ljava/lang/String; = "resume/"

.field private static final SCHEMA_ACTION_RETRY:Ljava/lang/String; = "retry/"

.field public static final SERVICE:Ljava/lang/String; = "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

.field private static final TAG:Ljava/lang/String; = "ServiceHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.appstore.resource.action.cancel"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.resourceservice"

    const-string v2, "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_key_res_type"

    .line 61
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "intent_key_assemble_key"

    .line 62
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "intent_key_calling_package"

    .line 63
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xp://cancel/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static pauseIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.appstore.resource.action.pause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.resourceservice"

    const-string v2, "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_key_res_type"

    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "intent_key_assemble_key"

    .line 38
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "intent_key_calling_package"

    .line 39
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xp://pause/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static resumeIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.appstore.resource.action.resume"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.resourceservice"

    const-string v2, "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_key_res_type"

    .line 49
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "intent_key_assemble_key"

    .line 50
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "intent_key_calling_package"

    .line 51
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xp://resume/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static retryIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.appstore.resource.action.retry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.resourceservice"

    const-string v2, "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_key_res_type"

    .line 73
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "intent_key_assemble_key"

    .line 74
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "intent_key_calling_package"

    .line 75
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xp://retry/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static startServiceSuccess(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {p1, p2, v0}, Lcom/xiaopeng/appstore/storeprovider/ServiceHelper;->successIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceToCancel(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {p1, p2, v0}, Lcom/xiaopeng/appstore/storeprovider/ServiceHelper;->cancelIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 122
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceToPause(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {p1, p2, v0}, Lcom/xiaopeng/appstore/storeprovider/ServiceHelper;->pauseIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceToResume(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/appstore/storeprovider/ServiceHelper;->startServiceToResume(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startServiceToResume(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startServiceToResume: resType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ServiceHelper"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    .line 113
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/appstore/storeprovider/ServiceHelper;->resumeIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceToRetry(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {p1, p2, v0}, Lcom/xiaopeng/appstore/storeprovider/ServiceHelper;->retryIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 130
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static successIntent(ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.appstore.resource.action.success"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaopeng.resourceservice"

    const-string v2, "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "intent_key_res_type"

    .line 85
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "intent_key_assemble_key"

    .line 86
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "intent_key_calling_package"

    .line 87
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "xp://open/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method
