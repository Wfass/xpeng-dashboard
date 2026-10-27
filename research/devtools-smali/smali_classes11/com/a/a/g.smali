.class public Lcom/a/a/g;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/g$a;
    }
.end annotation


# static fields
.field private static final mV:Lcom/a/a/h;

.field private static final mW:Lcom/a/a/h;

.field private static mZ:[Ljava/lang/Class;

.field private static na:[Ljava/lang/Class;

.field private static nb:[Ljava/lang/Class;

.field private static final nc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final nd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mPropertyName:Ljava/lang/String;

.field private mR:Lcom/a/a/h;

.field protected mS:Lcom/a/b/a;

.field mSetter:Ljava/lang/reflect/Method;

.field private mT:Ljava/lang/reflect/Method;

.field final mTmpValueArray:[Ljava/lang/Object;

.field mU:Lcom/a/a/f;

.field mValueType:Ljava/lang/Class;

.field final ne:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private nf:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 80
    new-instance v0, Lcom/a/a/d;

    invoke-direct {v0}, Lcom/a/a/d;-><init>()V

    sput-object v0, Lcom/a/a/g;->mV:Lcom/a/a/h;

    .line 81
    new-instance v0, Lcom/a/a/b;

    invoke-direct {v0}, Lcom/a/a/b;-><init>()V

    sput-object v0, Lcom/a/a/g;->mW:Lcom/a/a/h;

    .line 90
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Float;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Double;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Integer;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/a/a/g;->mZ:[Ljava/lang/Class;

    .line 92
    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Float;

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Double;

    aput-object v2, v1, v8

    sput-object v1, Lcom/a/a/g;->na:[Ljava/lang/Class;

    .line 94
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v8

    sput-object v0, Lcom/a/a/g;->nb:[Ljava/lang/Class;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/a/a/g;->nc:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/a/a/g;->nd:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/g;->mSetter:Ljava/lang/reflect/Method;

    .line 65
    iput-object v0, p0, Lcom/a/a/g;->mT:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lcom/a/a/g;->mU:Lcom/a/a/f;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/a/a/g;->ne:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/a/a/g;->mTmpValueArray:[Ljava/lang/Object;

    .line 132
    iput-object p1, p0, Lcom/a/a/g;->mPropertyName:Ljava/lang/String;

    .line 133
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/a/a/g$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/a/a/g;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[F)Lcom/a/a/g;
    .locals 1

    .line 176
    new-instance v0, Lcom/a/a/g$a;

    invoke-direct {v0, p0, p1}, Lcom/a/a/g$a;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/a/a/g;->mU:Lcom/a/a/f;

    invoke-virtual {v0, p1}, Lcom/a/a/f;->getValue(F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/g;->nf:Ljava/lang/Object;

    .line 671
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/a/a/g;->ds()Lcom/a/a/g;

    move-result-object v0

    return-object v0
.end method

.method public ds()Lcom/a/a/g;
    .locals 2

    .line 594
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/g;

    .line 595
    iget-object v1, p0, Lcom/a/a/g;->mPropertyName:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/a/g;->mPropertyName:Ljava/lang/String;

    .line 596
    iget-object v1, p0, Lcom/a/a/g;->mS:Lcom/a/b/a;

    iput-object v1, v0, Lcom/a/a/g;->mS:Lcom/a/b/a;

    .line 597
    iget-object v1, p0, Lcom/a/a/g;->mU:Lcom/a/a/f;

    invoke-virtual {v1}, Lcom/a/a/f;->dp()Lcom/a/a/f;

    move-result-object v1

    iput-object v1, v0, Lcom/a/a/g;->mU:Lcom/a/a/f;

    .line 598
    iget-object v1, p0, Lcom/a/a/g;->mR:Lcom/a/a/h;

    iput-object v1, v0, Lcom/a/a/g;->mR:Lcom/a/a/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    return-object v0

    .line 600
    :catch_0
    move-exception v0

    .line 602
    const/4 v0, 0x0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/a/a/g;->nf:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/a/a/g;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/a/a/g;->mR:Lcom/a/a/h;

    if-nez v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/a/a/g;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/a/a/g;->mV:Lcom/a/a/h;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/a/a/g;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/a/a/g;->mW:Lcom/a/a/h;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/a/a/g;->mR:Lcom/a/a/h;

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/a/a/g;->mR:Lcom/a/a/h;

    if-eqz v0, :cond_3

    .line 644
    iget-object v0, p0, Lcom/a/a/g;->mU:Lcom/a/a/f;

    iget-object v1, p0, Lcom/a/a/g;->mR:Lcom/a/a/h;

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)V

    .line 646
    :cond_3
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1

    .line 327
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/a/a/g;->mValueType:Ljava/lang/Class;

    .line 328
    invoke-static {p1}, Lcom/a/a/f;->a([F)Lcom/a/a/f;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/g;->mU:Lcom/a/a/f;

    .line 329
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/a/a/g;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/a/a/g;->mU:Lcom/a/a/f;

    invoke-virtual {v1}, Lcom/a/a/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
