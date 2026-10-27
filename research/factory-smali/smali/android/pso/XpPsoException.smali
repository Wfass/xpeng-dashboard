.class public Landroid/pso/XpPsoException;
.super Ljava/lang/Exception;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p3, p0, Landroid/pso/XpPsoException;->a:I

    sget-boolean p1, Landroid/pso/XpPso;->isBleService:Z

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Landroid/pso/XpPsoException$1;

    invoke-direct {v0, p0, p3, p2}, Landroid/pso/XpPsoException$1;-><init>(Landroid/pso/XpPsoException;ILjava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Landroid/pso/XpPsoException;->a:I

    return v0
.end method
