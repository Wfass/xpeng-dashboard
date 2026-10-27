.class public Lbdz;
.super Ljava/lang/Object;
.source "SyncModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdz$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbdz;->a:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lbdz$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lbdz;-><init>()V

    return-void
.end method

.method public static a()Lbdz;
    .locals 1

    .line 14
    sget-object v0, Lbdz$a;->a:Lbdz;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .line 21
    iget-object v0, p0, Lbdz;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
