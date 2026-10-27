.class public Lamp;
.super Ljava/lang/Object;
.source "SpinnerStyle.java"


# static fields
.field public static final a:Lamp;

.field public static final b:Lamp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:Lamp;

.field public static final d:Lamp;

.field public static final e:Lamp;

.field public static final f:[Lamp;


# instance fields
.field public final g:I

.field public final h:Z

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lamp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lamp;-><init>(IZZ)V

    sput-object v0, Lamp;->a:Lamp;

    .line 18
    new-instance v0, Lamp;

    invoke-direct {v0, v1, v1, v1}, Lamp;-><init>(IZZ)V

    sput-object v0, Lamp;->b:Lamp;

    .line 19
    new-instance v0, Lamp;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2, v2}, Lamp;-><init>(IZZ)V

    sput-object v0, Lamp;->c:Lamp;

    .line 20
    new-instance v0, Lamp;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v1, v2}, Lamp;-><init>(IZZ)V

    sput-object v0, Lamp;->d:Lamp;

    .line 21
    new-instance v0, Lamp;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v1, v2}, Lamp;-><init>(IZZ)V

    sput-object v0, Lamp;->e:Lamp;

    const/4 v0, 0x5

    .line 23
    new-array v0, v0, [Lamp;

    sget-object v6, Lamp;->a:Lamp;

    aput-object v6, v0, v2

    sget-object v2, Lamp;->b:Lamp;

    aput-object v2, v0, v1

    sget-object v1, Lamp;->c:Lamp;

    aput-object v1, v0, v3

    sget-object v1, Lamp;->d:Lamp;

    aput-object v1, v0, v4

    sget-object v1, Lamp;->e:Lamp;

    aput-object v1, v0, v5

    sput-object v0, Lamp;->f:[Lamp;

    return-void
.end method

.method protected constructor <init>(IZZ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lamp;->g:I

    .line 37
    iput-boolean p2, p0, Lamp;->h:Z

    .line 38
    iput-boolean p3, p0, Lamp;->i:Z

    return-void
.end method
