.class public Lcom/xiaopeng/lib/feature/ConfigBean$Builder;
.super Ljava/lang/Object;
.source "ConfigBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/feature/ConfigBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public carFeature:Ljava/lang/String;

.field public result:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/lib/feature/ConfigBean;
    .locals 1

    .line 67
    new-instance v0, Lcom/xiaopeng/lib/feature/ConfigBean;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/feature/ConfigBean;-><init>(Lcom/xiaopeng/lib/feature/ConfigBean$Builder;)V

    return-object v0
.end method

.method public carFeature(Ljava/lang/String;)Lcom/xiaopeng/lib/feature/ConfigBean$Builder;
    .locals 0
    .param p1, "carFeature"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/ConfigBean$Builder;->carFeature:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public result(Ljava/lang/String;)Lcom/xiaopeng/lib/feature/ConfigBean$Builder;
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/ConfigBean$Builder;->result:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public type(I)Lcom/xiaopeng/lib/feature/ConfigBean$Builder;
    .locals 0
    .param p1, "type"    # I

    .line 52
    iput p1, p0, Lcom/xiaopeng/lib/feature/ConfigBean$Builder;->type:I

    .line 53
    return-object p0
.end method
