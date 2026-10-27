.class public Lbvv;
.super Ljava/lang/Object;
.source "OverallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbvv$a;
    }
.end annotation


# static fields
.field private static g:I = 0xc8


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lbvy;

.field private c:Lbvz;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lbvy;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbvy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lbvy;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Landroid/os/Handler;

.field private m:Landroid/os/HandlerThread;

.field private n:Landroid/os/Handler;

.field private o:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbvv;->d:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbvv;->e:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbvv;->f:Ljava/util/Map;

    const-string v0, "xiaopeng.asr.result"

    .line 48
    iput-object v0, p0, Lbvv;->h:Ljava/lang/String;

    const-string v0, "OverallManager"

    .line 171
    iput-object v0, p0, Lbvv;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lbvv;->j:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lbvv;->k:[Ljava/lang/String;

    .line 182
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lbvv;->l:Landroid/os/Handler;

    .line 185
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lbvv;->o:Ljava/util/HashSet;

    .line 186
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lbvv;->p:Ljava/util/HashSet;

    .line 831
    iput-object v0, p0, Lbvv;->q:Ljava/lang/String;

    .line 832
    iput-object v0, p0, Lbvv;->r:Ljava/lang/String;

    .line 834
    new-instance v1, Lbvv$7;

    invoke-direct {v1, p0}, Lbvv$7;-><init>(Lbvv;)V

    iput-object v1, p0, Lbvv;->s:Ljava/lang/Runnable;

    .line 849
    iput-object v0, p0, Lbvv;->t:Ljava/lang/String;

    .line 850
    iput-object v0, p0, Lbvv;->u:Ljava/lang/String;

    .line 851
    iput-object v0, p0, Lbvv;->v:Ljava/lang/String;

    .line 853
    new-instance v0, Lbvv$8;

    invoke-direct {v0, p0}, Lbvv$8;-><init>(Lbvv;)V

    iput-object v0, p0, Lbvv;->w:Ljava/lang/Runnable;

    .line 175
    iget-object v0, p0, Lbvv;->m:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VuiEngine-overall"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbvv;->m:Landroid/os/HandlerThread;

    .line 177
    iget-object v0, p0, Lbvv;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 178
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbvv;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbvv;->n:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lbvv$1;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lbvv;-><init>()V

    return-void
.end method

.method public static final a()Lbvv;
    .locals 1

    .line 189
    invoke-static {}, Lbvv$a;->a()Lbvv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lbvv;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-direct {p0}, Lbvv;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]+(_[0-9]+)*"

    .line 871
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 872
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 873
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lbvv;)Lbvz;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->c:Lbvz;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .line 964
    invoke-static {}, Lbva;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaopeng.speechtesttools.ApiSpeechService"

    return-object v0

    :cond_0
    const-string v0, "com.xiaopeng.carspeechservice.ApiSpeechService"

    return-object v0
.end method

.method static synthetic c(Lbvv;)Lbvy;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->b:Lbvy;

    return-object p0
.end method

.method static synthetic d(Lbvv;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic e(Lbvv;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->n:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lbvv;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lbvv;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->r:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lbvv;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lbvv;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lbvv;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->w:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic k(Lbvv;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lbvv;->v:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "dispatchOverallEvent eventStr:"

    const-string v1, "dispatchOverallEvent mListeners:"

    :try_start_0
    const-string v2, "xiaopeng.asr.result"

    .line 648
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbvv;->c:Lbvz;

    if-eqz v2, :cond_0

    .line 649
    iget-object p1, p0, Lbvv;->l:Landroid/os/Handler;

    new-instance v0, Lbvv$2;

    invoke-direct {v0, p0, p2}, Lbvv$2;-><init>(Lbvv;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 657
    :cond_0
    iget-object v2, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const-string v4, "data"

    const-string v5, "event"

    const-string v6, "feedbackResult"

    const-string v7, "OverallManager"

    if-nez v2, :cond_f

    :try_start_1
    iget-object v2, p0, Lbvv;->b:Lbvy;

    if-eqz v2, :cond_f

    .line 658
    iget-object v1, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {v1}, Lbvw;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_d

    .line 660
    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "\\|"

    const-string v10, "|"

    if-eq v1, v3, :cond_9

    .line 662
    :try_start_2
    iget-object p1, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {p1}, Lbvw;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 665
    invoke-virtual {p1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 666
    iget-object v0, p0, Lbvv;->l:Landroid/os/Handler;

    new-instance v1, Lbvv$3;

    invoke-direct {v1, p0, p1, p2}, Lbvv$3;-><init>(Lbvv;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 673
    :cond_1
    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 674
    aget-object v1, p1, v2

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v3, v2

    .line 675
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_8

    .line 676
    aget-object v4, v1, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 677
    iget-object v5, p0, Lbvv;->b:Lbvy;

    aget-object v6, v4, v2

    invoke-interface {v5, v6}, Lbvy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 678
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v4, v8

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",obj:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_7

    .line 680
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    .line 681
    aget-object v6, v4, v8

    const-string v9, "true"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 683
    :cond_2
    aget-object v4, v4, v8

    const-string v6, "false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 688
    :cond_4
    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    .line 689
    aget-object v6, v4, v8

    invoke-direct {p0, v6}, Lbvv;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    check-cast v5, Ljava/lang/Integer;

    .line 690
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v5, v4, :cond_5

    goto :goto_1

    :cond_5
    return-void

    .line 695
    :cond_6
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 696
    check-cast v5, Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    .line 708
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchOverallEvent run:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    aget-object p1, p1, v8

    .line 710
    iget-object v0, p0, Lbvv;->l:Landroid/os/Handler;

    new-instance v1, Lbvv$4;

    invoke-direct {v1, p0, p1, p2}, Lbvv$4;-><init>(Lbvv;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 719
    :cond_9
    iget-object p2, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {p2}, Lbvw;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, v3, :cond_15

    .line 721
    iget-object v0, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {v0}, Lbvw;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 722
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 723
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 724
    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 725
    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 727
    :goto_2
    array-length v1, p2

    if-ge v2, v1, :cond_c

    .line 728
    iget-object v1, p0, Lbvv;->b:Lbvy;

    aget-object v3, p2, v2

    invoke-interface {v1, v3}, Lbvy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 730
    aget-object v3, p2, v2

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 735
    :cond_b
    iget-object v1, p0, Lbvv;->b:Lbvy;

    invoke-interface {v1, p2}, Lbvy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 737
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    :cond_c
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p2

    if-lez p2, :cond_15

    .line 741
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feedbackResult:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    .line 743
    invoke-direct {p0}, Lbvv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 744
    invoke-virtual {p2, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 745
    invoke-virtual {p2, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 746
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 747
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 748
    invoke-static {p1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 755
    :cond_d
    iget-object v0, p0, Lbvv;->o:Ljava/util/HashSet;

    if-eqz v0, :cond_e

    new-array v0, v8, [Ljava/util/HashSet;

    iget-object v1, p0, Lbvv;->o:Ljava/util/HashSet;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 756
    iget-object v0, p0, Lbvv;->l:Landroid/os/Handler;

    new-instance v1, Lbvv$5;

    invoke-direct {v1, p0, p1, p2}, Lbvv$5;-><init>(Lbvv;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 762
    :cond_e
    iget-object p2, p0, Lbvv;->p:Ljava/util/HashSet;

    if-eqz p2, :cond_15

    new-array p2, v8, [Ljava/util/HashSet;

    iget-object v0, p0, Lbvv;->p:Ljava/util/HashSet;

    aput-object v0, p2, v2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 763
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 764
    iget-object v0, p0, Lbvv;->b:Lbvy;

    invoke-interface {v0, p1}, Lbvy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 765
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 767
    invoke-direct {p0}, Lbvv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 768
    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 769
    invoke-virtual {v0, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 770
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 771
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 772
    invoke-static {p1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 775
    :cond_f
    iget-object v0, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lbvv;->b:Lbvy;

    if-nez v0, :cond_10

    .line 776
    iput-object p1, p0, Lbvv;->q:Ljava/lang/String;

    .line 777
    iput-object p2, p0, Lbvv;->r:Ljava/lang/String;

    .line 778
    iget-object p1, p0, Lbvv;->n:Landroid/os/Handler;

    iget-object p2, p0, Lbvv;->s:Ljava/lang/Runnable;

    sget v0, Lbvv;->g:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    .line 779
    :cond_10
    iget-object v0, p0, Lbvv;->b:Lbvy;

    if-nez v0, :cond_15

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbvv;->d:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lbvv;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbvv;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lbvv;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 784
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbvy;

    .line 785
    iget-object v2, p0, Lbvv;->o:Ljava/util/HashSet;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lbvv;->o:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 786
    iget-object v2, p0, Lbvv;->l:Landroid/os/Handler;

    new-instance v3, Lbvv$6;

    invoke-direct {v3, p0, v1, p1, p2}, Lbvv$6;-><init>(Lbvv;Lbvy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 794
    :cond_12
    iget-object v2, p0, Lbvv;->p:Ljava/util/HashSet;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lbvv;->p:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 795
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 796
    invoke-interface {v1, p1}, Lbvy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 797
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 799
    invoke-direct {p0}, Lbvv;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 800
    invoke-virtual {v1, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 801
    invoke-virtual {v1, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 802
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 803
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 804
    invoke-static {v1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    goto :goto_3

    .line 807
    :cond_13
    iget-object v0, p0, Lbvv;->d:Ljava/util/Map;

    if-nez v0, :cond_14

    .line 808
    iput-object p1, p0, Lbvv;->q:Ljava/lang/String;

    .line 809
    iput-object p2, p0, Lbvv;->r:Ljava/lang/String;

    .line 810
    iget-object p1, p0, Lbvv;->n:Landroid/os/Handler;

    iget-object p2, p0, Lbvv;->s:Ljava/lang/Runnable;

    sget v0, Lbvv;->g:I

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 812
    :cond_14
    iget-object p2, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {p2}, Lbvw;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, v3, :cond_15

    .line 814
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 815
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 816
    invoke-direct {p0}, Lbvv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 817
    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 818
    invoke-virtual {v0, v5, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 819
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 820
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 821
    invoke-static {p1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_15
    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "dispatchOverallEvent mListeners:"

    const-string v1, "OverallManager"

    .line 881
    :try_start_0
    iput-object p3, p0, Lbvv;->v:Ljava/lang/String;

    .line 882
    iget-object v2, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "result"

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lbvv;->b:Lbvy;

    if-eqz v2, :cond_1

    .line 883
    iget-object p2, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {p2}, Lbvw;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 885
    iget-object v0, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {v0}, Lbvw;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 886
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "|"

    .line 887
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 888
    iget-object v0, p0, Lbvv;->b:Lbvy;

    invoke-interface {v0, p2}, Lbvy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 889
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 892
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 893
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    new-instance v0, Lbvx;

    invoke-direct {v0, p1, p2}, Lbvx;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 894
    invoke-virtual {v0}, Lbvx;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 895
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 891
    invoke-static {p1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    const/4 p2, 0x1

    .line 905
    new-array p2, p2, [Ljava/util/HashSet;

    const/4 v0, 0x0

    iget-object v1, p0, Lbvv;->p:Ljava/util/HashSet;

    aput-object v1, p2, v0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 906
    iget-object p2, p0, Lbvv;->b:Lbvy;

    invoke-interface {p2, p1}, Lbvy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 907
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 910
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 911
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    new-instance v0, Lbvx;

    invoke-direct {v0, p1, p2}, Lbvx;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 912
    invoke-virtual {v0}, Lbvx;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 913
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 909
    invoke-static {p1}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 922
    :cond_1
    iget-object v2, p0, Lbvv;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbvv;->b:Lbvy;

    if-nez v2, :cond_2

    .line 923
    iput-object p1, p0, Lbvv;->t:Ljava/lang/String;

    .line 924
    iput-object p2, p0, Lbvv;->u:Ljava/lang/String;

    .line 925
    iget-object p1, p0, Lbvv;->n:Landroid/os/Handler;

    iget-object p2, p0, Lbvv;->w:Ljava/lang/Runnable;

    sget p3, Lbvv;->g:I

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 926
    :cond_2
    iget-object v2, p0, Lbvv;->b:Lbvy;

    if-nez v2, :cond_5

    .line 927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lbvv;->d:Ljava/util/Map;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v2, p0, Lbvv;->d:Ljava/util/Map;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lbvv;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 929
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbvv;->d:Ljava/util/Map;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object p2, p0, Lbvv;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    .line 932
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :catch_0
    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvy;

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchOverallEvent listener:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",event:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v2, p0, Lbvv;->p:Ljava/util/HashSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbvv;->p:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 935
    invoke-interface {v0, p1}, Lbvy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 936
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_3

    .line 939
    :try_start_2
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 940
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v4, Lbvx;

    invoke-direct {v4, p1, v0}, Lbvx;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    invoke-virtual {v4}, Lbvx;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 942
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 938
    invoke-static {v0}, Laol;->a(Landroid/net/Uri;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 951
    :cond_4
    :try_start_3
    iget-object p3, p0, Lbvv;->d:Ljava/util/Map;

    if-nez p3, :cond_5

    .line 952
    iput-object p1, p0, Lbvv;->t:Ljava/lang/String;

    .line 953
    iput-object p2, p0, Lbvv;->u:Ljava/lang/String;

    .line 954
    iget-object p1, p0, Lbvv;->n:Landroid/os/Handler;

    iget-object p2, p0, Lbvv;->w:Ljava/lang/Runnable;

    sget p3, Lbvv;->g:I

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_5
    :goto_1
    return-void
.end method
