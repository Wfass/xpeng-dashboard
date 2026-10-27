.class public final LOooO00o/OooO0O0/OooO0OO/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/loostone/libcore/jni/JniCall;->OooO00o:Lcom/loostone/libcore/jni/JniCall;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/loostone/libcore/jni/JniCall;->exec(II)I

    return-void
.end method

.method public final OooO0O0(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/loostone/libcore/jni/JniCall;->OooO00o:Lcom/loostone/libcore/jni/JniCall;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/loostone/libcore/jni/JniCall;->exec(II)I

    move-result p1

    return p1
.end method
