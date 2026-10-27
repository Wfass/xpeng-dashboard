.class public final Lcom/xiaopeng/commonfunc/utils/internal/IndivInternalFactory;
.super Ljava/lang/Object;
.source "IndivInternalFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndivHelperImpl()Lcom/xiaopeng/commonfunc/utils/internal/IIndivInternal;
    .locals 2

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 8
    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper;->getInstance()Lcom/xiaopeng/commonfunc/utils/internal/XmartV1IndivHelper;

    move-result-object v0

    return-object v0
.end method
