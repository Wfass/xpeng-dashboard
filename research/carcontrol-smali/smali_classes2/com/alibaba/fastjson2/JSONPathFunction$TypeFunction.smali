.class final Lcom/alibaba/fastjson2/JSONPathFunction$TypeFunction;
.super Ljava/lang/Object;
.source "JSONPathFunction.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypeFunction"
.end annotation


# static fields
.field static final INSTANCE:Lcom/alibaba/fastjson2/JSONPathFunction$TypeFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 411
    new-instance v0, Lcom/alibaba/fastjson2/JSONPathFunction$TypeFunction;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONPathFunction$TypeFunction;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/JSONPathFunction$TypeFunction;->INSTANCE:Lcom/alibaba/fastjson2/JSONPathFunction$TypeFunction;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 415
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPathFunction;->type(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
