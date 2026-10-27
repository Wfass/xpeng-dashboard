.class public final LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0$OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0o/OooO0O0$OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;->OooO00o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 8

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;

    .line 2
    sput p1, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0O0;->OooO0OO:I

    .line 3
    new-instance v2, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0o;

    invoke-direct {v2}, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooO0o;-><init>()V

    .line 20
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    const/4 p1, -0x1

    invoke-static {p1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO00o(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 22
    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v7}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO;->OooO00o(Ljava/util/concurrent/ExecutorService;LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;JJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method
