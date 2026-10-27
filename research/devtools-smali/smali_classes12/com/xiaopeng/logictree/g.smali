.class public Lcom/xiaopeng/logictree/g;
.super Ljava/lang/Object;
.source "LogicTreeParser.java"


# static fields
.field private static final Ya:Ljava/lang/String;


# instance fields
.field private volatile El:Lcom/xiaopeng/logictree/f;

.field private XX:Ljava/lang/String;

.field private final Yb:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/logictree/handler/h;",
            ">;"
        }
    .end annotation
.end field

.field private final Yc:Lcom/xiaopeng/logictree/a;

.field private Yd:Ljava/lang/String;

.field private Ye:Lcom/xiaopeng/aftersales/LogicTreeUpgrader;

.field private mContext:Landroid/content/Context;

.field private mDownloadPath:Ljava/lang/String;

.field private vl:Lcom/xiaopeng/aftersales/AfterSalesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/flow/cv2/vehicle/cdu/cdu_diagnosis_logic_tree"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/logictree/g;->Ya:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    .line 313
    sget-object v0, Lcom/xiaopeng/logictree/-$$Lambda$g$fmW1WynHrWjdwPxR6qZqhHD1riY;->INSTANCE:Lcom/xiaopeng/logictree/-$$Lambda$g$fmW1WynHrWjdwPxR6qZqhHD1riY;

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->Ye:Lcom/xiaopeng/aftersales/LogicTreeUpgrader;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    .line 88
    invoke-static {}, Lcom/xiaopeng/logictree/a;->pA()Lcom/xiaopeng/logictree/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    .line 89
    return-void
.end method

.method private synthetic a(Lcom/xiaopeng/logictree/handler/h;)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    return-void
.end method

.method private static synthetic aT(Z)V
    .locals 3

    .line 314
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    if-eqz p0, :cond_0

    const/16 p0, 0x2718

    goto :goto_0

    .line 315
    :cond_0
    const/16 p0, 0x2717

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    .line 314
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 316
    return-void
.end method

.method private synthetic b(ZLjava/lang/String;)V
    .locals 2

    .line 218
    if-eqz p1, :cond_0

    .line 219
    const-string v0, ".zip"

    const-string v1, "XML_MODEL"

    .line 220
    invoke-static {v1}, Lcom/xiaopeng/a/a$d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-static {p2, v0, v1}, Lcom/xiaopeng/commonfunc/utils/i;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 222
    goto :goto_0

    .line 223
    :cond_0
    nop

    .line 226
    :goto_0
    invoke-static {p2}, Lcom/xiaopeng/commonfunc/utils/i;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    const-string v0, "/cache/aftersales/logictree"

    invoke-static {p2, v0}, Lcom/xiaopeng/commonfunc/utils/i;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-nez p1, :cond_1

    .line 229
    invoke-static {p2}, Lcom/xiaopeng/commonfunc/utils/i;->deleteFile(Ljava/lang/String;)Z

    .line 231
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    const-string p2, "/cache/aftersales/logictree"

    invoke-virtual {p1, p2}, Lcom/xiaopeng/aftersales/AfterSalesManager;->requestUpgradeLogicTree(Ljava/lang/String;)V

    goto :goto_1

    .line 233
    :cond_2
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v0, 0x2717

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 235
    :goto_1
    return-void
.end method

.method public static synthetic lambda$XWI6atI8Q4M1K-fcz1bpVspQPGE(Lcom/xiaopeng/logictree/g;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/logictree/g;->b(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$f6q2f6yp3OGvFmpsiDObd3M1qFw(Lcom/xiaopeng/logictree/g;Lcom/xiaopeng/logictree/handler/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/g;->a(Lcom/xiaopeng/logictree/handler/h;)V

    return-void
.end method

.method public static synthetic lambda$fmW1WynHrWjdwPxR6qZqhHD1riY(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/logictree/g;->aT(Z)V

    return-void
.end method

.method private ma()V
    .locals 4

    .line 805
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v2, 0x2713

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 806
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/logictree/e;JJI)Z
    .locals 9

    .line 742
    const-string v0, "LogicTreeParser"

    const-string v1, "process logicTreePath[%s] startTime[%d] endTime[%d]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 743
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/e;->pP()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 742
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    nop

    .line 746
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    const/16 v1, 0x2716

    if-nez v0, :cond_0

    .line 748
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/xiaopeng/logictree/g;->XX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/e;->pP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const-class v5, Lcom/xiaopeng/logictree/c;

    .line 748
    invoke-virtual {v2, v3, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/logictree/c;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/logictree/a;->a(Lcom/xiaopeng/logictree/c;)V

    .line 751
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {p1}, Lcom/xiaopeng/logictree/e;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/logictree/a;->dR(Ljava/lang/String;)V

    .line 752
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/logictree/a;->setStartTime(J)V

    .line 753
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {p1, p4, p5}, Lcom/xiaopeng/logictree/a;->r(J)V

    .line 754
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    iget-object p2, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    invoke-virtual {p2}, Lcom/xiaopeng/logictree/f;->getVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/logictree/a;->dS(Ljava/lang/String;)V

    .line 755
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {p1, p6}, Lcom/xiaopeng/logictree/a;->dT(I)V

    .line 756
    invoke-virtual {p0}, Lcom/xiaopeng/logictree/g;->pZ()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    goto :goto_1

    .line 757
    :catch_0
    move-exception p1

    .line 758
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    iget-object p4, p0, Lcom/xiaopeng/logictree/g;->mContext:Landroid/content/Context;

    sget p5, Lcom/xiaopeng/logictree/R$string;->tips_logictree_parse_fail:I

    .line 759
    invoke-virtual {p4, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, v1, p4}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    .line 758
    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 760
    invoke-direct {p0}, Lcom/xiaopeng/logictree/g;->ma()V

    .line 761
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 762
    goto :goto_0

    .line 764
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    iget-object p3, p0, Lcom/xiaopeng/logictree/g;->mContext:Landroid/content/Context;

    sget p4, Lcom/xiaopeng/logictree/R$string;->tips_for_wait_last_diagnosis_done:I

    .line 765
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v1, p3}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    .line 764
    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 766
    invoke-direct {p0}, Lcom/xiaopeng/logictree/g;->ma()V

    .line 767
    const-string p1, "LogicTreeParser"

    const-string p2, "it was processing other logic tree, plz trigger again later"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 770
    :goto_0
    move p1, v4

    :goto_1
    return p1
.end method

.method public d(Landroid/app/Application;)V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->mDownloadPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2717

    if-eqz v0, :cond_0

    .line 181
    const-string p1, "LogicTreeParser"

    const-string v0, "upgradeLogicTreeViaCloud with empty downloadPath"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 183
    return-void

    .line 185
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v3, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;

    invoke-interface {v0, v3}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;

    .line 187
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;->initWithContext(Landroid/app/Application;)V

    .line 188
    const-string p1, "xp-security"

    iget-object v3, p0, Lcom/xiaopeng/logictree/g;->mDownloadPath:Ljava/lang/String;

    const-string v4, "/cache/aftersales/logictree/temp_logictree.zip"

    new-instance v5, Lcom/xiaopeng/logictree/g$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/logictree/g$1;-><init>(Lcom/xiaopeng/logictree/g;)V

    invoke-interface {v0, p1, v3, v4, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;->downloadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 209
    :catch_0
    move-exception p1

    .line 210
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 213
    :goto_0
    return-void
.end method

.method public declared-synchronized e(Landroid/app/Application;)V
    .locals 3

    monitor-enter p0

    .line 239
    :try_start_0
    const-string v0, "LogicTreeParser"

    const-string v1, "Register Logic Action handler"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->mContext:Landroid/content/Context;

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->mContext:Landroid/content/Context;

    const-string v1, "xiaopeng_aftersales"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "interactive"

    new-instance v2, Lcom/xiaopeng/logictree/handler/f;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/f;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "shellcmd"

    new-instance v2, Lcom/xiaopeng/logictree/handler/k;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/k;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "diagnosiscode"

    new-instance v2, Lcom/xiaopeng/logictree/handler/b;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/b;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "displayresult"

    new-instance v2, Lcom/xiaopeng/logictree/handler/d;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/d;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "security"

    new-instance v2, Lcom/xiaopeng/logictree/handler/j;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/j;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "networkinfo"

    new-instance v2, Lcom/xiaopeng/logictree/handler/i;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/i;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "usbinfo"

    new-instance v2, Lcom/xiaopeng/logictree/handler/l;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/l;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "didinfo"

    new-instance v2, Lcom/xiaopeng/logictree/handler/c;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/c;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "bluetooth"

    new-instance v2, Lcom/xiaopeng/logictree/handler/a;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/a;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    const-string v1, "gpsinfo"

    new-instance v2, Lcom/xiaopeng/logictree/handler/e;

    invoke-direct {v2, p1}, Lcom/xiaopeng/logictree/handler/e;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/f;->k(Ljava/lang/Object;)V

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Ye:Lcom/xiaopeng/aftersales/LogicTreeUpgrader;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/aftersales/AfterSalesManager;->addLogicTreeUpgrader(Lcom/xiaopeng/aftersales/LogicTreeUpgrader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public h(Ljava/lang/String;Z)V
    .locals 1

    .line 216
    new-instance v0, Lcom/xiaopeng/logictree/-$$Lambda$g$XWI6atI8Q4M1K-fcz1bpVspQPGE;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/logictree/-$$Lambda$g$XWI6atI8Q4M1K-fcz1bpVspQPGE;-><init>(Lcom/xiaopeng/logictree/g;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/logictree/b;)V
    .locals 10
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 321
    nop

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    .line 323
    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_41

    .line 324
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 325
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 326
    const-string v0, "LOGIC_ACTION_RESPONSE_EXEC_NO_RESULT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 p1, -0x2

    .line 417
    move v1, p1

    goto/16 :goto_10

    .line 330
    :cond_0
    move v4, v1

    move v0, v2

    :goto_0
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_10

    .line 331
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pK()I

    move-result v5

    const/16 v6, 0xf

    if-eq v5, v6, :cond_d

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_e

    .line 401
    :pswitch_0
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 402
    nop

    .line 403
    goto/16 :goto_d

    .line 395
    :pswitch_1
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_e

    .line 396
    nop

    .line 397
    goto/16 :goto_d

    .line 386
    :pswitch_2
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    const-string v6, ","

    .line 387
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 386
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 388
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 389
    nop

    .line 390
    nop

    .line 393
    move v4, v0

    goto :goto_2

    .line 386
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 393
    :cond_2
    :goto_2
    goto/16 :goto_e

    .line 377
    :pswitch_3
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    const-string v6, ","

    .line 378
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 377
    array-length v6, v5

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    .line 379
    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 380
    nop

    .line 381
    nop

    .line 384
    move v4, v0

    goto :goto_4

    .line 377
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 384
    :cond_4
    :goto_4
    goto/16 :goto_e

    .line 368
    :pswitch_4
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    const-string v6, ","

    .line 369
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 368
    array-length v6, v5

    move v7, v2

    :goto_5
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 370
    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 371
    nop

    .line 372
    nop

    .line 375
    move v4, v0

    goto :goto_6

    .line 368
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 375
    :cond_6
    :goto_6
    goto/16 :goto_e

    .line 358
    :pswitch_5
    nop

    .line 359
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    .line 360
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 359
    array-length v5, v4

    move v6, v2

    :goto_7
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 361
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 362
    nop

    .line 363
    nop

    .line 366
    move v4, v1

    goto :goto_8

    .line 359
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 366
    :cond_8
    move v4, v0

    :goto_8
    goto/16 :goto_e

    .line 348
    :pswitch_6
    nop

    .line 349
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    .line 350
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 349
    array-length v5, v4

    move v6, v2

    :goto_9
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    .line 351
    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 352
    nop

    .line 353
    nop

    .line 356
    move v4, v1

    goto :goto_a

    .line 349
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 356
    :cond_a
    move v4, v0

    :goto_a
    goto :goto_e

    .line 338
    :pswitch_7
    nop

    .line 339
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    .line 340
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 339
    array-length v5, v4

    move v6, v2

    :goto_b
    if-ge v6, v5, :cond_c

    aget-object v7, v4, v6

    .line 341
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 342
    nop

    .line 343
    nop

    .line 346
    move v4, v1

    goto :goto_c

    .line 339
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 346
    :cond_c
    move v4, v0

    :goto_c
    goto :goto_e

    .line 333
    :pswitch_8
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 334
    goto :goto_d

    .line 407
    :cond_d
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 408
    nop

    .line 412
    :goto_d
    move v4, v0

    :cond_e
    :goto_e
    if-ne v4, v0, :cond_f

    .line 413
    goto :goto_f

    .line 330
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 417
    :cond_10
    :goto_f
    move v1, v4

    :goto_10
    goto/16 :goto_39

    :cond_11
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [I

    if-eqz v0, :cond_24

    .line 418
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 419
    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 420
    move v4, v1

    move v0, v2

    :goto_11
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_23

    .line 421
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pK()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_20

    .line 503
    :sswitch_0
    nop

    .line 504
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ";"

    .line 505
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 506
    move v5, v2

    :goto_12
    array-length v6, v4

    if-ge v5, v6, :cond_13

    .line 507
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 508
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 509
    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 510
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    xor-int/2addr v7, v8

    if-gt v7, v6, :cond_12

    .line 511
    nop

    .line 512
    nop

    .line 517
    move v4, v1

    goto/16 :goto_20

    .line 506
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 517
    :cond_13
    move v4, v0

    goto/16 :goto_20

    .line 489
    :sswitch_1
    nop

    .line 490
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ";"

    .line 491
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 492
    move v5, v2

    :goto_13
    array-length v6, v4

    if-ge v5, v6, :cond_15

    .line 493
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 494
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 495
    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 496
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    or-int/2addr v7, v8

    if-gt v7, v6, :cond_14

    .line 497
    nop

    .line 498
    nop

    .line 501
    move v4, v1

    goto :goto_14

    .line 492
    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 501
    :cond_15
    move v4, v0

    :goto_14
    goto/16 :goto_20

    .line 475
    :sswitch_2
    nop

    .line 476
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ";"

    .line 477
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 478
    move v5, v2

    :goto_15
    array-length v6, v4

    if-ge v5, v6, :cond_17

    .line 479
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 480
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 481
    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 482
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/2addr v7, v8

    if-gt v7, v6, :cond_16

    .line 483
    nop

    .line 484
    nop

    .line 487
    move v4, v1

    goto :goto_16

    .line 478
    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 487
    :cond_17
    move v4, v0

    :goto_16
    goto/16 :goto_20

    .line 461
    :sswitch_3
    nop

    .line 462
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ";"

    .line 463
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 464
    move v5, v2

    :goto_17
    array-length v6, v4

    if-ge v5, v6, :cond_19

    .line 465
    aget-object v6, v4, v5

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 466
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 467
    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 468
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/2addr v7, v8

    if-eq v7, v6, :cond_18

    .line 469
    nop

    .line 470
    nop

    .line 473
    move v4, v1

    goto :goto_18

    .line 464
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 473
    :cond_19
    move v4, v0

    :goto_18
    goto/16 :goto_20

    .line 452
    :sswitch_4
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    const-string v6, ","

    .line 453
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 452
    array-length v6, v5

    move v7, v2

    :goto_19
    if-ge v7, v6, :cond_1b

    aget-object v8, v5, v7

    .line 454
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    .line 455
    nop

    .line 456
    nop

    .line 459
    move v4, v0

    goto :goto_1a

    .line 452
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 459
    :cond_1b
    :goto_1a
    goto/16 :goto_20

    .line 443
    :sswitch_5
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    const-string v6, ","

    .line 444
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 443
    array-length v6, v5

    move v7, v2

    :goto_1b
    if-ge v7, v6, :cond_1d

    aget-object v8, v5, v7

    .line 445
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 446
    nop

    .line 447
    nop

    .line 450
    move v4, v0

    goto :goto_1c

    .line 443
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 450
    :cond_1d
    :goto_1c
    goto :goto_20

    .line 433
    :sswitch_6
    nop

    .line 434
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    .line 435
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 434
    array-length v5, v4

    move v6, v2

    :goto_1d
    if-ge v6, v5, :cond_1f

    aget-object v7, v4, v6

    .line 436
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 437
    nop

    .line 438
    nop

    .line 441
    move v4, v1

    goto :goto_1e

    .line 434
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 441
    :cond_1f
    move v4, v0

    :goto_1e
    goto :goto_20

    .line 423
    :sswitch_7
    nop

    .line 424
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    .line 425
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 424
    array-length v5, v4

    move v6, v2

    :goto_1f
    if-ge v6, v5, :cond_21

    aget-object v7, v4, v6

    .line 426
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 427
    nop

    .line 428
    nop

    .line 431
    move v4, v1

    goto :goto_20

    .line 424
    :cond_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    .line 431
    :cond_21
    move v4, v0

    .line 517
    :goto_20
    if-ne v4, v0, :cond_22

    .line 518
    goto :goto_21

    .line 420
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_11

    .line 521
    :cond_23
    :goto_21
    move v1, v4

    goto/16 :goto_39

    :cond_24
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    .line 522
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 523
    move v0, v2

    :goto_22
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_2b

    .line 524
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pK()I

    move-result v4

    if-eq v4, v3, :cond_29

    const/16 v5, 0x10

    if-eq v4, v5, :cond_27

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_27

    .line 574
    :pswitch_9
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 575
    array-length v5, v4

    move v6, v2

    :goto_23
    if-ge v6, v5, :cond_26

    aget-object v7, v4, v6

    .line 576
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 577
    aget-object v8, v7, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 578
    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 579
    if-lt p1, v8, :cond_25

    if-gt p1, v7, :cond_25

    .line 580
    nop

    .line 581
    nop

    .line 584
    move v1, v0

    goto :goto_24

    .line 575
    :cond_25
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 584
    :cond_26
    :goto_24
    goto/16 :goto_27

    .line 565
    :pswitch_a
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 566
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 567
    aget-object v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 568
    const/4 v7, 0x2

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 569
    and-int/2addr v5, p1

    shr-int/2addr v5, v6

    if-lt v5, v4, :cond_2a

    .line 570
    goto/16 :goto_26

    .line 557
    :pswitch_b
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 558
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 559
    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 560
    xor-int/2addr v5, p1

    if-ne v5, v4, :cond_2a

    .line 561
    goto/16 :goto_26

    .line 549
    :pswitch_c
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 550
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 551
    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 552
    or-int/2addr v5, p1

    if-ne v5, v4, :cond_2a

    .line 553
    goto/16 :goto_26

    .line 541
    :pswitch_d
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 542
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 543
    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 544
    and-int/2addr v5, p1

    if-ne v5, v4, :cond_2a

    .line 545
    goto :goto_26

    .line 536
    :pswitch_e
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-gt v4, p1, :cond_2a

    .line 537
    goto :goto_26

    .line 531
    :pswitch_f
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v4, p1, :cond_2a

    .line 532
    goto :goto_26

    .line 586
    :cond_27
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 587
    array-length v5, v4

    move v6, v2

    :goto_25
    if-ge v6, v5, :cond_2a

    aget-object v7, v4, v6

    .line 588
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 589
    aget-object v8, v7, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 590
    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 591
    if-le p1, v8, :cond_28

    if-ge p1, v7, :cond_28

    .line 592
    nop

    .line 593
    goto :goto_26

    .line 587
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 526
    :cond_29
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, p1, :cond_2a

    .line 527
    nop

    .line 523
    :goto_26
    move v1, v0

    :cond_2a
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_22

    .line 599
    :cond_2b
    goto/16 :goto_39

    :cond_2c
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_30

    .line 600
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 601
    move p1, v2

    :goto_28
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_2f

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pK()I

    move-result v0

    if-eq v0, v3, :cond_2d

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2a

    .line 635
    :pswitch_10
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 636
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 637
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 638
    int-to-long v6, v6

    xor-long/2addr v6, v4

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-nez v0, :cond_2e

    .line 639
    goto/16 :goto_29

    .line 627
    :pswitch_11
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 628
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 629
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 630
    int-to-long v6, v6

    or-long/2addr v6, v4

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-nez v0, :cond_2e

    .line 631
    goto :goto_29

    .line 619
    :pswitch_12
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 620
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 621
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 622
    int-to-long v6, v6

    and-long/2addr v6, v4

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-nez v0, :cond_2e

    .line 623
    goto :goto_29

    .line 614
    :pswitch_13
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gtz v0, :cond_2e

    .line 615
    goto :goto_29

    .line 609
    :pswitch_14
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_2e

    .line 610
    goto :goto_29

    .line 604
    :cond_2d
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_2e

    .line 605
    nop

    .line 601
    :goto_29
    move v1, p1

    :cond_2e
    :goto_2a
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_28

    .line 644
    :cond_2f
    goto/16 :goto_39

    :cond_30
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_34

    .line 645
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 646
    move p1, v2

    :goto_2b
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_33

    .line 647
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pK()I

    move-result v0

    if-eq v0, v3, :cond_31

    packed-switch v0, :pswitch_data_3

    goto :goto_2d

    .line 659
    :pswitch_15
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    cmpg-double v0, v6, v4

    if-gtz v0, :cond_32

    .line 660
    goto :goto_2c

    .line 654
    :pswitch_16
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    cmpg-double v0, v6, v4

    if-gez v0, :cond_32

    .line 655
    goto :goto_2c

    .line 649
    :cond_31
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    cmpl-double v0, v6, v4

    if-nez v0, :cond_32

    .line 650
    nop

    .line 646
    :goto_2c
    move v1, p1

    :cond_32
    :goto_2d
    add-int/lit8 p1, p1, 0x1

    goto :goto_2b

    .line 665
    :cond_33
    goto/16 :goto_39

    :cond_34
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 666
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/b;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 667
    move v4, v1

    move v0, v2

    :goto_2e
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ge v0, v5, :cond_40

    .line 668
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pK()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_37

    .line 708
    :sswitch_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 709
    iget-object v7, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v7}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 710
    nop

    .line 711
    nop

    .line 716
    move v4, v0

    goto/16 :goto_37

    .line 713
    :cond_35
    goto :goto_2f

    .line 699
    :sswitch_9
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    const-string v6, ","

    .line 700
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 699
    array-length v6, v5

    move v7, v2

    :goto_30
    if-ge v7, v6, :cond_37

    aget-object v8, v5, v7

    .line 701
    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_36

    .line 702
    nop

    .line 703
    nop

    .line 706
    move v4, v0

    goto :goto_31

    .line 699
    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 706
    :cond_37
    :goto_31
    goto/16 :goto_37

    .line 690
    :sswitch_a
    iget-object v5, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    const-string v6, ","

    .line 691
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 690
    array-length v6, v5

    move v7, v2

    :goto_32
    if-ge v7, v6, :cond_39

    aget-object v8, v5, v7

    .line 692
    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 693
    nop

    .line 694
    nop

    .line 697
    move v4, v0

    goto :goto_33

    .line 690
    :cond_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 697
    :cond_39
    :goto_33
    goto :goto_37

    .line 680
    :sswitch_b
    nop

    .line 681
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    .line 682
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 681
    array-length v5, v4

    move v6, v2

    :goto_34
    if-ge v6, v5, :cond_3b

    aget-object v7, v4, v6

    .line 683
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 684
    nop

    .line 685
    nop

    .line 688
    move v4, v1

    goto :goto_35

    .line 681
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 688
    :cond_3b
    move v4, v0

    :goto_35
    goto :goto_37

    .line 670
    :sswitch_c
    nop

    .line 671
    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    const-string v5, ","

    .line 672
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 671
    array-length v5, v4

    move v6, v2

    :goto_36
    if-ge v6, v5, :cond_3d

    aget-object v7, v4, v6

    .line 673
    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 674
    nop

    .line 675
    nop

    .line 678
    move v4, v1

    goto :goto_37

    .line 671
    :cond_3c
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 678
    :cond_3d
    move v4, v0

    .line 716
    :cond_3e
    :goto_37
    if-ne v4, v0, :cond_3f

    .line 717
    goto :goto_38

    .line 667
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2e

    .line 722
    :cond_40
    :goto_38
    move v1, v4

    :cond_41
    :goto_39
    const-string p1, "LogicTreeParser"

    const-string v0, "index : %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1, v0, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    packed-switch v1, :pswitch_data_4

    .line 731
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/logictree/c;->pI()I

    move-result p1

    if-ge v1, p1, :cond_42

    .line 732
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/logictree/c;->dU(I)Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/logictree/a;->a(Lcom/xiaopeng/logictree/c;)V

    goto :goto_3a

    .line 725
    :pswitch_17
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pJ()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/logictree/a;->a(Lcom/xiaopeng/logictree/c;)V

    .line 726
    goto :goto_3a

    .line 728
    :pswitch_18
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pL()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/logictree/a;->a(Lcom/xiaopeng/logictree/c;)V

    .line 729
    goto :goto_3a

    .line 734
    :cond_42
    iget-object p1, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->pJ()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/logictree/a;->a(Lcom/xiaopeng/logictree/c;)V

    .line 738
    :goto_3a
    invoke-virtual {p0}, Lcom/xiaopeng/logictree/g;->pZ()Z

    .line 739
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_7
        0x4 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0xa -> :sswitch_3
        0x11 -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_c
        0x4 -> :sswitch_b
        0x6 -> :sswitch_a
        0x7 -> :sswitch_9
        0xf -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4
    .packed-switch -0x2
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method public pS()Z
    .locals 7

    .line 92
    nop

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->Yd:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->mDownloadPath:Ljava/lang/String;

    .line 95
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 96
    const-string v3, "vin"

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/o;->eG()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/4 v3, 0x0

    :try_start_0
    const-class v4, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v4}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v4

    const-class v5, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v4, v5}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 100
    invoke-interface {v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v4

    sget-object v5, Lcom/xiaopeng/logictree/g;->Ya:Ljava/lang/String;

    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 101
    invoke-virtual {v6, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 102
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    .line 104
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/xiaopeng/commonfunc/utils/d;->a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;

    move-result-object v1

    .line 107
    const-string v4, "LogicTreeParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serverBean code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  data : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " msg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/a/a;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/a/a;->getCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    nop

    .line 113
    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->Yd:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->mDownloadPath:Ljava/lang/String;

    .line 121
    move v2, v3

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lcom/xiaopeng/lib/http/a/a;->getData()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/xiaopeng/logictree/bean/LogicTreeVersion;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/logictree/bean/LogicTreeVersion;

    .line 118
    invoke-virtual {v0}, Lcom/xiaopeng/logictree/bean/LogicTreeVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/logictree/g;->Yd:Ljava/lang/String;

    .line 119
    invoke-virtual {v0}, Lcom/xiaopeng/logictree/bean/LogicTreeVersion;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->mDownloadPath:Ljava/lang/String;

    .line 121
    :goto_0
    const-string v0, "LogicTreeParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCloudVer version : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->Yd:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " path : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->mDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    nop

    .line 128
    move v2, v3

    :goto_1
    return v2
.end method

.method public pT()V
    .locals 8

    .line 137
    const-string v0, "/system/etc/aftersales"

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->XX:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/google/gson/stream/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/etc/aftersales"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "logictree_list.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const-class v4, Lcom/xiaopeng/logictree/f;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/logictree/f;

    iput-object v2, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 143
    :catch_0
    move-exception v2

    .line 144
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    iput-object v1, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    .line 147
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/logictree/d;->XW:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "logictree_list.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/i;->aY(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 150
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/google/gson/stream/JsonReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    const-class v2, Lcom/xiaopeng/logictree/f;

    invoke-virtual {v3, v4, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/logictree/f;

    .line 153
    iget-object v3, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/logictree/f;->getVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    .line 154
    invoke-virtual {v4}, Lcom/xiaopeng/logictree/f;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "MODEL_NAME"

    .line 155
    invoke-static {v3}, Lcom/xiaopeng/a/a$b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {v2}, Lcom/xiaopeng/logictree/f;->pQ()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    if-nez v2, :cond_1

    .line 161
    const-string v2, "LogicTreeParser"

    const-string v3, "logicTreeInfoList is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 163
    :cond_1
    const-string v3, "LogicTreeParser"

    const-string v4, "logicTreeInfoList version[%s] project[%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 164
    invoke-virtual {v2}, Lcom/xiaopeng/logictree/f;->getVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2}, Lcom/xiaopeng/logictree/f;->pQ()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 163
    invoke-static {v3, v4, v5}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 157
    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    .line 158
    sget-object v2, Lcom/xiaopeng/logictree/d;->XW:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaopeng/logictree/g;->XX:Ljava/lang/String;

    .line 168
    :cond_3
    :goto_2
    const-string v2, "LogicTreeParser"

    iget-object v3, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    invoke-virtual {v3}, Lcom/xiaopeng/logictree/f;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    goto :goto_3

    .line 169
    :catch_1
    move-exception v2

    .line 170
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :goto_3
    iget-object v2, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v2}, Lcom/xiaopeng/logictree/a;->pE()I

    move-result v2

    if-ne v2, v0, :cond_4

    .line 173
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v3, 0x2719

    invoke-direct {v2, v3, v1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_4

    .line 175
    :cond_4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v3, 0x2714

    invoke-direct {v2, v3, v1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 177
    :goto_4
    return-void
.end method

.method public declared-synchronized pU()V
    .locals 3

    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    const-string v0, "LogicTreeParser"

    const-string v1, "unregister Logic Action handler"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/logictree/handler/h;

    .line 262
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 265
    :cond_0
    goto :goto_0

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 268
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    .line 269
    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->XX:Ljava/lang/String;

    .line 270
    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->mDownloadPath:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Lcom/xiaopeng/logictree/g;->Yd:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v1, p0, Lcom/xiaopeng/logictree/g;->Ye:Lcom/xiaopeng/aftersales/LogicTreeUpgrader;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->removeLogicTreeUpgrader(Lcom/xiaopeng/aftersales/LogicTreeUpgrader;)V

    .line 273
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/f;->l(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pV()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yd:Ljava/lang/String;

    return-object v0
.end method

.method public pW()Lcom/xiaopeng/logictree/f;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    return-object v0
.end method

.method public pX()Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pY()Z
    .locals 7

    .line 293
    nop

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yd:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/f;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/logictree/g;->Yd:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 297
    move v0, v1

    goto :goto_0

    .line 295
    :cond_0
    nop

    .line 297
    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "LogicTreeParser"

    const-string v4, "local version[%s], cloud version[%s] isLogicTreeNeedUpdate[%s]"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xiaopeng/logictree/g;->El:Lcom/xiaopeng/logictree/f;

    .line 298
    invoke-virtual {v6}, Lcom/xiaopeng/logictree/f;->getVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v2, p0, Lcom/xiaopeng/logictree/g;->Yd:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    .line 297
    invoke-static {v3, v4, v5}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    return v0
.end method

.method public pZ()Z
    .locals 8

    .line 774
    nop

    .line 775
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/c;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 778
    iget-object v2, p0, Lcom/xiaopeng/logictree/g;->Yb:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/logictree/handler/h;

    .line 780
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 781
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v5, 0x2715

    invoke-direct {v1, v5, v4}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 782
    new-instance v0, Lcom/xiaopeng/logictree/-$$Lambda$g$f6q2f6yp3OGvFmpsiDObd3M1qFw;

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/logictree/-$$Lambda$g$f6q2f6yp3OGvFmpsiDObd3M1qFw;-><init>(Lcom/xiaopeng/logictree/g;Lcom/xiaopeng/logictree/handler/h;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 783
    nop

    .line 793
    move v1, v3

    goto :goto_0

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/logictree/g;->ma()V

    .line 786
    iget-object v2, p0, Lcom/xiaopeng/logictree/g;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/logictree/a;->a(Lcom/xiaopeng/logictree/c;)V

    .line 787
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 788
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v4, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v5, 0x2716

    iget-object v6, p0, Lcom/xiaopeng/logictree/g;->mContext:Landroid/content/Context;

    sget v7, Lcom/xiaopeng/logictree/R$string;->tips_logictree_parse_fail:I

    .line 789
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    .line 788
    invoke-virtual {v2, v4}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 790
    const-string v2, "LogicTreeParser"

    const-string v4, "dont support this action [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v4, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 793
    :cond_1
    :goto_0
    goto :goto_1

    .line 794
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/logictree/g;->ma()V

    .line 795
    const-string v0, "LogicTreeParser"

    const-string v2, "end of issue diagnosis"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    :goto_1
    return v1
.end method
