.class public Lcom/xiaopeng/devtools/model/c/a/i;
.super Ljava/lang/Object;
.source "USBModel.java"


# static fields
.field private static final sG:Ljava/lang/String;

.field private static final sH:Ljava/lang/String;

.field private static final sI:Ljava/lang/String;

.field private static final sJ:Ljava/lang/String;

.field private static final sK:Ljava/lang/String;


# instance fields
.field private sL:Z

.field private sM:Z

.field private sN:Z

.field private sO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "USB_DEVICES"

    invoke-static {v0}, Lcom/xiaopeng/a/a$c;->ee(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/devtools/model/c/a/i;->sG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1-1.3/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sH:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/devtools/model/c/a/i;->sG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1-1.4/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sI:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/devtools/model/c/a/i;->sG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1-1.2/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sJ:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/devtools/model/c/a/i;->sG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3-1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sL:Z

    .line 22
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sM:Z

    .line 23
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sN:Z

    .line 24
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sO:Z

    .line 30
    return-void
.end method

.method private bz(Ljava/lang/String;)Z
    .locals 1

    .line 33
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public fX()Z
    .locals 2

    .line 38
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/c/a/i;->bz(Ljava/lang/String;)Z

    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sL:Z

    .line 42
    :cond_0
    return v0
.end method

.method public fY()Z
    .locals 2

    .line 46
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/c/a/i;->bz(Ljava/lang/String;)Z

    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sM:Z

    .line 50
    :cond_0
    return v0
.end method

.method public fZ()Z
    .locals 2

    .line 54
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sJ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/c/a/i;->bz(Ljava/lang/String;)Z

    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sN:Z

    .line 58
    :cond_0
    return v0
.end method

.method public ga()Z
    .locals 2

    .line 62
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sK:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/c/a/i;->bz(Ljava/lang/String;)Z

    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sO:Z

    .line 66
    :cond_0
    return v0
.end method

.method public gb()Z
    .locals 1

    .line 70
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/i;->sK:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/model/c/a/i;->bz(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public gd()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sL:Z

    return v0
.end method

.method public ge()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sM:Z

    return v0
.end method

.method public gf()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sN:Z

    return v0
.end method

.method public gg()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/c/a/i;->sO:Z

    return v0
.end method
