.class public abstract Lcdb;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field public h:Landroidx/fragment/app/FragmentManager;

.field public i:I

.field public j:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcdb;->i:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcdb;->j:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcdb;->i:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcdb;->j:J

    .line 26
    iput p1, p0, Lcdb;->i:I

    return-void
.end method

.method public constructor <init>(ILandroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcdb;-><init>(I)V

    .line 31
    iput-object p2, p0, Lcdb;->h:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
