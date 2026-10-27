.class public abstract LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO0o;
.super LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooO00o/OooO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooO0o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO$OooO;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "ThreadUtils"

    const-string v1, "onFail: "

    .line 1
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
