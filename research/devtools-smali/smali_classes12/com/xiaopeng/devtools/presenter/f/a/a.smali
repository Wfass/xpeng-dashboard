.class public Lcom/xiaopeng/devtools/presenter/f/a/a;
.super Ljava/lang/Object;
.source "AdasCollectPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/f/a/b;


# static fields
.field public static final nw:[Ljava/lang/String;

.field public static final zt:Ljava/lang/String;


# instance fields
.field private zu:Lcom/xiaopeng/devtools/model/g/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    const-string v0, "/sdcard/adas"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/f/a/a;->nw:[Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/devtools/presenter/f/a/a;->nw:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "adas.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/f/a/a;->zt:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Lcom/xiaopeng/devtools/model/g/a/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/g/a/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/a/a;->zu:Lcom/xiaopeng/devtools/model/g/a/a;

    .line 112
    return-void
.end method


# virtual methods
.method public fv()V
    .locals 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    const-string v1, "\n---------start collect adas :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/a;->l(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--------"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    return-void
.end method

.method public hF()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/a/a;->zu:Lcom/xiaopeng/devtools/model/g/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/g/a/a;->hF()V

    .line 130
    return-void
.end method

.method public ka()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/f/a/a;->zu:Lcom/xiaopeng/devtools/model/g/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/g/a/a;->hE()V

    .line 124
    return-void
.end method
