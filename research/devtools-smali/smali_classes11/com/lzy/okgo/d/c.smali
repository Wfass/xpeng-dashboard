.class public Lcom/lzy/okgo/d/c;
.super Ljava/lang/Object;
.source "ColumnEntity.java"


# instance fields
.field public lQ:Ljava/lang/String;

.field public lR:Ljava/lang/String;

.field public lS:[Ljava/lang/String;

.field public lT:Z

.field public lU:Z

.field public lV:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 48
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    .line 58
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lzy/okgo/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/lzy/okgo/d/c;->lQ:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/lzy/okgo/d/c;->lR:Ljava/lang/String;

    .line 71
    iput-boolean p3, p0, Lcom/lzy/okgo/d/c;->lT:Z

    .line 72
    iput-boolean p4, p0, Lcom/lzy/okgo/d/c;->lU:Z

    .line 73
    iput-boolean p5, p0, Lcom/lzy/okgo/d/c;->lV:Z

    .line 74
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/lzy/okgo/d/c;->lS:[Ljava/lang/String;

    .line 41
    return-void
.end method
