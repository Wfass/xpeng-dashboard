.class public Lbdh;
.super Ljava/lang/Object;
.source "ReplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdh$a;
    }
.end annotation


# instance fields
.field private a:Lbdj;

.field private b:Lbdg;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lbdj;

    invoke-direct {v0}, Lbdj;-><init>()V

    iput-object v0, p0, Lbdh;->a:Lbdj;

    .line 17
    invoke-static {}, Lbdg;->a()Lbdg;

    move-result-object v0

    iput-object v0, p0, Lbdh;->b:Lbdg;

    return-void
.end method

.method synthetic constructor <init>(Lbdh$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lbdh;-><init>()V

    return-void
.end method

.method public static a()Lbdh;
    .locals 1

    .line 9
    sget-object v0, Lbdh$a;->a:Lbdh;

    return-object v0
.end method


# virtual methods
.method public b()Lbdj;
    .locals 1

    .line 21
    iget-object v0, p0, Lbdh;->a:Lbdj;

    return-object v0
.end method

.method public c()Lbdg;
    .locals 1

    .line 25
    iget-object v0, p0, Lbdh;->b:Lbdg;

    return-object v0
.end method
