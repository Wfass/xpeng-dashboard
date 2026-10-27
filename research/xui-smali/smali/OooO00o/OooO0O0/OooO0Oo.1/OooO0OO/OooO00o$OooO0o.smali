.class public final LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o;->OooO00o(LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO0O0/OooO00o<",
        "Lcom/loostone/libserver/version1/entity/response/config/MicLimitInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic OooO00o:LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/loostone/libserver/version1/entity/response/ResponseData;)V
    .locals 3
    .param p1    # Lcom/loostone/libserver/version1/entity/response/ResponseData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/loostone/libserver/version1/entity/response/ResponseData<",
            "Lcom/loostone/libserver/version1/entity/response/config/MicLimitInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "NetworkVersion1"

    const-string v2, "micVerification() onSuccess"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;

    invoke-virtual {p1}, Lcom/loostone/libserver/version1/entity/response/ResponseData;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/loostone/libserver/version1/entity/response/config/MicLimitInfo;

    invoke-virtual {p1}, Lcom/loostone/libserver/version1/entity/response/config/MicLimitInfo;->getState()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "NetworkVersion1"

    const-string v1, "micVerification() onSuccess but no data"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;

    invoke-interface {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;->onError()V

    :goto_1
    return-void
.end method

.method public OooO00o(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 9
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "micVerification() onError ------> "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetworkVersion1"

    invoke-virtual {v0, v1, p1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, LOooO00o/OooO0O0/OooO0Oo/OooO0OO/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;

    invoke-interface {p1}, LOooO00o/OooO0O0/OooO0Oo/OooO0O0/OooO;->onError()V

    return-void
.end method
