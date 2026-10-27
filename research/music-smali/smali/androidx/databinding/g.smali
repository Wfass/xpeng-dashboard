.class public Landroidx/databinding/g;
.super Landroidx/databinding/c;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/c<",
        "Landroidx/databinding/ObservableList$a;",
        "Landroidx/databinding/ObservableList;",
        "Landroidx/databinding/g$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lff$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lff$c<",
            "Landroidx/databinding/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroidx/databinding/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/c$a<",
            "Landroidx/databinding/ObservableList$a;",
            "Landroidx/databinding/ObservableList;",
            "Landroidx/databinding/g$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lff$c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lff$c;-><init>(I)V

    sput-object v0, Landroidx/databinding/g;->a:Lff$c;

    .line 38
    new-instance v0, Landroidx/databinding/g$1;

    invoke-direct {v0}, Landroidx/databinding/g$1;-><init>()V

    sput-object v0, Landroidx/databinding/g;->b:Landroidx/databinding/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 143
    sget-object v0, Landroidx/databinding/g;->b:Landroidx/databinding/c$a;

    invoke-direct {p0, v0}, Landroidx/databinding/c;-><init>(Landroidx/databinding/c$a;)V

    return-void
.end method

.method private static a(III)Landroidx/databinding/g$a;
    .locals 1

    .line 123
    sget-object v0, Landroidx/databinding/g;->a:Lff$c;

    invoke-virtual {v0}, Lff$c;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/g$a;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroidx/databinding/g$a;

    invoke-direct {v0}, Landroidx/databinding/g$a;-><init>()V

    .line 127
    :cond_0
    iput p0, v0, Landroidx/databinding/g$a;->a:I

    .line 128
    iput p1, v0, Landroidx/databinding/g$a;->c:I

    .line 129
    iput p2, v0, Landroidx/databinding/g$a;->b:I

    return-object v0
.end method


# virtual methods
.method public a(Landroidx/databinding/ObservableList;II)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-static {p2, v0, p3}, Landroidx/databinding/g;->a(III)Landroidx/databinding/g$a;

    move-result-object p2

    const/4 p3, 0x1

    .line 82
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/g;->a(Landroidx/databinding/ObservableList;ILandroidx/databinding/g$a;)V

    return-void
.end method

.method public declared-synchronized a(Landroidx/databinding/ObservableList;ILandroidx/databinding/g$a;)V
    .locals 0

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroidx/databinding/c;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 138
    sget-object p1, Landroidx/databinding/g;->a:Lff$c;

    invoke-virtual {p1, p3}, Lff$c;->release(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Landroidx/databinding/ObservableList;

    check-cast p3, Landroidx/databinding/g$a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/g;->a(Landroidx/databinding/ObservableList;ILandroidx/databinding/g$a;)V

    return-void
.end method

.method public b(Landroidx/databinding/ObservableList;II)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-static {p2, v0, p3}, Landroidx/databinding/g;->a(III)Landroidx/databinding/g$a;

    move-result-object p2

    const/4 p3, 0x2

    .line 94
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/g;->a(Landroidx/databinding/ObservableList;ILandroidx/databinding/g$a;)V

    return-void
.end method

.method public c(Landroidx/databinding/ObservableList;II)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-static {p2, v0, p3}, Landroidx/databinding/g;->a(III)Landroidx/databinding/g$a;

    move-result-object p2

    const/4 p3, 0x4

    .line 119
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/g;->a(Landroidx/databinding/ObservableList;ILandroidx/databinding/g$a;)V

    return-void
.end method
