.class public Lbxe;
.super Lbvu$a;
.source "WakeupEngineProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private final a:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbvu;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/common/bean/DisableInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/common/bean/DisableInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lbvu$a;-><init>()V

    .line 32
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "WakeupEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbxe;->b:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbxe;->c:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbxe;->d:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/os/IBinder;ILjava/lang/String;Z)V
    .locals 3

    const/4 v0, -0x1

    .line 905
    invoke-direct {p0, p1, p2, p3, v0}, Lbxe;->d(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 906
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removeSuspendInfoCache :  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WakeupEngineProxy"

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 908
    iget-object p2, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 909
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove  :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "remove after :  "

    if-eqz p4, :cond_0

    .line 911
    iget-object p4, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 913
    :cond_0
    iget-object p4, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 914
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 915
    invoke-interface {p4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 917
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": infoBeans"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 919
    iget-object v1, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 921
    :cond_2
    iget-object p4, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 11

    move-object v8, p0

    .line 844
    iget-object v9, v8, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v10, Lbxe$50;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lbxe$50;-><init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V

    invoke-virtual {v9, v10}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lbxe;Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lbxe;->c(Landroid/os/IBinder;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lbxe;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lbxe;->c(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lbxe;Landroid/os/IBinder;ILjava/lang/String;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lbxe;->a(Landroid/os/IBinder;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lbxe;Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lbxe;->c(Landroid/os/IBinder;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lbxe;->c(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p5}, Lbxe;->b(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private b(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9

    const/4 v0, -0x1

    .line 869
    invoke-direct {p0, p1, p4, p2, v0}, Lbxe;->d(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuspendInfoCache :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeupEngineProxy"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 872
    new-instance v1, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;-><init>(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 873
    iget-object p1, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    .line 875
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 877
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object p2, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "put data  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",suspendInfoCache:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 1

    .line 770
    invoke-direct {p0, p1, p2, p3, p4}, Lbxe;->d(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 771
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removeDisableInfoCache :  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WakeupEngineProxy"

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 773
    iget-object p2, p0, Lbxe;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 774
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "remove  :  "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lbxe;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    iget-object p2, p0, Lbxe;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove after :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbxe;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 758
    invoke-direct {p0, p1, p2, p3, p5}, Lbxe;->d(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 759
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisableInfoCache :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeupEngineProxy"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 761
    new-instance v1, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    move-object v3, v1

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;-><init>(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 762
    iget-object p1, p0, Lbxe;->b:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "put data  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object p1, p0, Lbxe;->b:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    .line 984
    invoke-direct {p0, p1, p3, p2, v0}, Lbxe;->d(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 985
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "removeDisableSpeechInfoCache :  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WakeupEngineProxy"

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 987
    iget-object p2, p0, Lbxe;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 988
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove  :  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbxe;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 989
    iget-object p2, p0, Lbxe;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove after :  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lbxe;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    const/4 v0, -0x1

    .line 972
    invoke-direct {p0, p1, p4, p2, v0}, Lbxe;->d(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisableSpeechInfoCache :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WakeupEngineProxy"

    invoke-static {v2, v1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 974
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 975
    new-instance v1, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    const/4 v5, -0x1

    move-object v3, v1

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;-><init>(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    .line 976
    iget-object p1, p0, Lbxe;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 977
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "put data  :  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 978
    iget-object p1, p0, Lbxe;->c:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private d(Landroid/os/IBinder;ILjava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    .line 783
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const-string v1, "_"

    if-ne p2, v0, :cond_0

    .line 786
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 788
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eq p4, v0, :cond_1

    .line 791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private z()V
    .locals 13

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeCarSpeechStatus  disableInfoCache size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbxe;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",suspendInfoCache size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbxe;->d:Ljava/util/Map;

    .line 800
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",disableSpeechInfoCache size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbxe;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WakeupEngineProxy"

    .line 799
    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lbxe;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 802
    iget-object v0, p0, Lbxe;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 803
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    if-eqz v2, :cond_0

    .line 805
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable from cache:    = ====  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->b()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 807
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->d()Ljava/lang/String;

    move-result-object v5

    .line 808
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->e()I

    move-result v2

    .line 807
    invoke-virtual {p0, v3, v4, v5, v2}, Lbxe;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 810
    :cond_1
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->a()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->b()I

    move-result v8

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->d()Ljava/lang/String;

    move-result-object v10

    .line 811
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->e()I

    move-result v11

    move-object v6, p0

    .line 810
    invoke-virtual/range {v6 .. v11}, Lbxe;->a(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 817
    :cond_2
    iget-object v0, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 818
    iget-object v0, p0, Lbxe;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 819
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 820
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 821
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;

    if-eqz v4, :cond_4

    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "suspend from cache:    = ====  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->b()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->d()Ljava/lang/String;

    move-result-object v9

    .line 825
    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->e()I

    move-result v10

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/bean/SuspendInfoBean;->a()Z

    move-result v11

    const/4 v12, 0x0

    move-object v6, p0

    .line 824
    invoke-direct/range {v6 .. v12}, Lbxe;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 831
    :cond_5
    iget-object v0, p0, Lbxe;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 832
    iget-object v0, p0, Lbxe;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 833
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;

    if-eqz v2, :cond_6

    .line 835
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disable speech from cache:    = ====  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->a()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->d()Ljava/lang/String;

    move-result-object v5

    .line 837
    invoke-virtual {v2}, Lcom/xiaopeng/speech/common/bean/DisableInfoBean;->e()I

    move-result v2

    .line 836
    invoke-virtual {p0, v3, v4, v5, v2}, Lbxe;->b(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_7
    return-void
.end method


# virtual methods
.method public a(II)Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 2

    .line 1061
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$59;

    invoke-direct {v1, p0, p1, p2}, Lbxe$59;-><init>(Lbxe;II)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    return-object p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 4

    if-gez p1, :cond_0

    .line 892
    invoke-static {}, Lbvh;->b()Z

    move-result v0

    .line 893
    new-instance v1, Lcom/xiaopeng/speech/jarvisproto/f;

    invoke-direct {v1, p1, v0}, Lcom/xiaopeng/speech/jarvisproto/f;-><init>(IZ)V

    .line 894
    invoke-virtual {v1}, Lcom/xiaopeng/speech/jarvisproto/f;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 896
    :cond_0
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$51;

    invoke-direct {v1, p0, p1}, Lbxe$51;-><init>(Lbxe;I)V

    new-instance v2, Lcom/xiaopeng/speech/jarvisproto/f;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/xiaopeng/speech/jarvisproto/f;-><init>(IZ)V

    .line 901
    invoke-virtual {v2}, Lcom/xiaopeng/speech/jarvisproto/f;->a()Ljava/lang/String;

    move-result-object p1

    .line 896
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 2

    .line 318
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$17;

    invoke-direct {v1, p0, p1}, Lbxe$17;-><init>(Lbxe;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 8

    .line 622
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v7, Lbxe$42;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lbxe$42;-><init>(Lbxe;Landroid/os/IBinder;ILjava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 601
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v8, Lbxe$41;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lbxe$41;-><init>(Lbxe;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 885
    invoke-virtual {p0, p1, p2, v0, v1}, Lbxe;->a(Landroid/os/IBinder;Ljava/lang/String;IZ)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2

    .line 703
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$47;

    invoke-direct {v1, p0, p1, p2, p3}, Lbxe$47;-><init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 8

    .line 997
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v7, Lbxe$54;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lbxe$54;-><init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;IZ)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 723
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$48;

    invoke-direct {v1, p0, p1, p2, p3}, Lbxe$48;-><init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 683
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v7, Lbxe$46;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lbxe$46;-><init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 865
    invoke-direct/range {v0 .. v6}, Lbxe;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Z)V
    .locals 2

    .line 358
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$20;

    invoke-direct {v1, p0, p1, p2}, Lbxe$20;-><init>(Lbxe;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 44
    :try_start_0
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-interface {p1}, Lbun;->d()Lbvu;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V

    const-string p1, "WakeupEngineProxy"

    const-string v0, "reset:   onConnect"

    .line 46
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/common/util/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lbxe;->z()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 49
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 1

    .line 754
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$23;

    invoke-direct {v1, p0, p1}, Lbxe$23;-><init>(Lbxe;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 590
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$40;

    invoke-direct {v1, p0, p1, p2}, Lbxe$40;-><init>(Lbxe;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 1017
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$55;

    invoke-direct {v1, p0, p1, p2}, Lbxe$55;-><init>(Lbxe;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .line 156
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v7, Lbxe$63;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lbxe$63;-><init>(Lbxe;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 307
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$16;

    invoke-direct {v1, p0, p1}, Lbxe$16;-><init>(Lbxe;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$6;

    invoke-direct {v1, p0, p1}, Lbxe$6;-><init>(Lbxe;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lbxe$7;-><init>(Lbxe;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 177
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v8, Lbxe$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lbxe$3;-><init>(Lbxe;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 60
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$1;

    invoke-direct {v1, p0}, Lbxe$1;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/IBinder;)V
    .locals 2

    .line 333
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$18;

    invoke-direct {v1, p0, p1}, Lbxe$18;-><init>(Lbxe;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/IBinder;ILjava/lang/String;I)V
    .locals 8

    .line 663
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v7, Lbxe$44;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lbxe$44;-><init>(Lbxe;Landroid/os/IBinder;ILjava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 642
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v8, Lbxe$43;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lbxe$43;-><init>(Lbxe;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 2

    .line 952
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$53;

    invoke-direct {v1, p0, p1, p2, p3}, Lbxe$53;-><init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 738
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$49;

    invoke-direct {v1, p0, p1, p2, p3}, Lbxe$49;-><init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 931
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v7, Lbxe$52;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lbxe$52;-><init>(Lbxe;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 478
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$31;

    invoke-direct {v1, p0, p1}, Lbxe$31;-><init>(Lbxe;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 383
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$22;

    invoke-direct {v1, p0, p1}, Lbxe$22;-><init>(Lbxe;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b([Ljava/lang/String;)V
    .locals 2

    .line 254
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$10;

    invoke-direct {v1, p0, p1}, Lbxe$10;-><init>(Lbxe;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lbxe$9;-><init>(Lbxe;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 199
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v8, Lbxe$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lbxe$5;-><init>(Lbxe;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(I)[Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;
    .locals 2

    .line 1076
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$60;

    invoke-direct {v1, p0, p1}, Lbxe$60;-><init>(Lbxe;I)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/xiaopeng/speech/jarvisproto/DialogSoundAreaStatus;

    return-object p1
.end method

.method public c()V
    .locals 2

    .line 71
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$12;

    invoke-direct {v1, p0}, Lbxe$12;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/os/IBinder;)V
    .locals 2

    .line 489
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$32;

    invoke-direct {v1, p0, p1}, Lbxe$32;-><init>(Lbxe;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 579
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$39;

    invoke-direct {v1, p0, p1}, Lbxe$39;-><init>(Lbxe;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 426
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$27;

    invoke-direct {v1, p0, p1}, Lbxe$27;-><init>(Lbxe;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 93
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$34;

    invoke-direct {v1, p0}, Lbxe$34;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Landroid/os/IBinder;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$33;

    invoke-direct {v1, p0, p1}, Lbxe$33;-><init>(Lbxe;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 104
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$45;

    invoke-direct {v1, p0}, Lbxe$45;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Landroid/os/IBinder;)V
    .locals 2

    .line 519
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$35;

    invoke-direct {v1, p0, p1}, Lbxe$35;-><init>(Lbxe;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 119
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$56;

    invoke-direct {v1, p0}, Lbxe$56;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public f(Landroid/os/IBinder;)V
    .locals 2

    .line 534
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$36;

    invoke-direct {v1, p0, p1}, Lbxe$36;-><init>(Lbxe;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 134
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$61;

    invoke-direct {v1, p0}, Lbxe$61;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public g(Landroid/os/IBinder;)V
    .locals 2

    .line 549
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$37;

    invoke-direct {v1, p0, p1}, Lbxe$37;-><init>(Lbxe;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public h(Landroid/os/IBinder;)V
    .locals 2

    .line 564
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$38;

    invoke-direct {v1, p0, p1}, Lbxe$38;-><init>(Lbxe;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public h()[Ljava/lang/String;
    .locals 3

    .line 146
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$62;

    invoke-direct {v1, p0}, Lbxe$62;-><init>(Lbxe;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 167
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$2;

    invoke-direct {v1, p0}, Lbxe$2;-><init>(Lbxe;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 2

    .line 188
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$4;

    invoke-direct {v1, p0}, Lbxe$4;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 232
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$8;

    invoke-direct {v1, p0}, Lbxe$8;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 265
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$11;

    invoke-direct {v1, p0}, Lbxe$11;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 276
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$13;

    invoke-direct {v1, p0}, Lbxe$13;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public n()Z
    .locals 3

    .line 287
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$14;

    invoke-direct {v1, p0}, Lbxe$14;-><init>(Lbxe;)V

    const/4 v2, 0x0

    .line 292
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 3

    .line 297
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$15;

    invoke-direct {v1, p0}, Lbxe$15;-><init>(Lbxe;)V

    const/4 v2, 0x1

    .line 302
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 297
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public p()Z
    .locals 3

    .line 348
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$19;

    invoke-direct {v1, p0}, Lbxe$19;-><init>(Lbxe;)V

    const/4 v2, 0x1

    .line 353
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 348
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 3

    .line 373
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$21;

    invoke-direct {v1, p0}, Lbxe$21;-><init>(Lbxe;)V

    const/4 v2, 0x0

    .line 378
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 373
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public r()V
    .locals 2

    .line 394
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$24;

    invoke-direct {v1, p0}, Lbxe$24;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public s()V
    .locals 2

    .line 405
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$25;

    invoke-direct {v1, p0}, Lbxe$25;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public t()Z
    .locals 3

    .line 416
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$26;

    invoke-direct {v1, p0}, Lbxe$26;-><init>(Lbxe;)V

    const/4 v2, 0x0

    .line 421
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 416
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public u()V
    .locals 2

    .line 441
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$28;

    invoke-direct {v1, p0}, Lbxe$28;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public v()V
    .locals 2

    .line 456
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$29;

    invoke-direct {v1, p0}, Lbxe$29;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public w()V
    .locals 2

    .line 467
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$30;

    invoke-direct {v1, p0}, Lbxe$30;-><init>(Lbxe;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public x()Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;
    .locals 3

    .line 1046
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$58;

    invoke-direct {v1, p0}, Lbxe$58;-><init>(Lbxe;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/jarvisproto/SwitchStatus;

    return-object v0
.end method

.method public y()Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;
    .locals 3

    .line 1031
    iget-object v0, p0, Lbxe;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxe$57;

    invoke-direct {v1, p0}, Lbxe$57;-><init>(Lbxe;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/jarvisproto/AvatarStatus;

    return-object v0
.end method
