.class final Ljm$a;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljy;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkg;


# direct methods
.method private constructor <init>(Lkg;)V
    .locals 1

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljm$a;->a:Ljava/util/List;

    .line 399
    iput-object p1, p0, Ljm$a;->b:Lkg;

    return-void
.end method

.method synthetic constructor <init>(Lkg;Ljm$1;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Ljm$a;-><init>(Lkg;)V

    return-void
.end method

.method static synthetic a(Ljm$a;)Ljava/util/List;
    .locals 0

    .line 394
    iget-object p0, p0, Ljm$a;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Ljm$a;)Lkg;
    .locals 0

    .line 394
    iget-object p0, p0, Ljm$a;->b:Lkg;

    return-object p0
.end method
