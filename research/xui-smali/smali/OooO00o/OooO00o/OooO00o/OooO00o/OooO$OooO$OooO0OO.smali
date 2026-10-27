.class public LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0OO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Ljava/lang/Throwable;

.field public final synthetic OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;


# direct methods
.method public constructor <init>(LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0OO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;

    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0OO;->OooO00o:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0OO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;

    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0OO;->OooO00o:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO00o(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO$OooO0OO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;

    invoke-virtual {v0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;->OooO0OO()V

    return-void
.end method
