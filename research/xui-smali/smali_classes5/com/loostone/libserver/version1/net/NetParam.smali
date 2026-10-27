.class public Lcom/loostone/libserver/version1/net/NetParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isRawRequest:Z

.field public param:Ljava/lang/Object;

.field public requestTag:Ljava/lang/String;

.field public retry:I

.field public timeout:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
