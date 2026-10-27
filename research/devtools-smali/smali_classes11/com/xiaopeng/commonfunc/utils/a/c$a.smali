.class final Lcom/xiaopeng/commonfunc/utils/a/c$a;
.super Ljava/lang/Object;
.source "XmartV1IndivHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/utils/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final pv:Lcom/xiaopeng/commonfunc/utils/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/a/c;

    invoke-direct {v0}, Lcom/xiaopeng/commonfunc/utils/a/c;-><init>()V

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/a/c$a;->pv:Lcom/xiaopeng/commonfunc/utils/a/c;

    return-void
.end method

.method static synthetic eK()Lcom/xiaopeng/commonfunc/utils/a/c;
    .locals 1

    .line 174
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/a/c$a;->pv:Lcom/xiaopeng/commonfunc/utils/a/c;

    return-object v0
.end method
