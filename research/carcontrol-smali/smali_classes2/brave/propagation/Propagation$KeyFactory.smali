.class public interface abstract Lbrave/propagation/Propagation$KeyFactory;
.super Ljava/lang/Object;
.source "Propagation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/Propagation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "KeyFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final STRING:Lbrave/propagation/Propagation$KeyFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation$KeyFactory<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lbrave/propagation/Propagation$KeyFactory$1;

    invoke-direct {v0}, Lbrave/propagation/Propagation$KeyFactory$1;-><init>()V

    sput-object v0, Lbrave/propagation/Propagation$KeyFactory;->STRING:Lbrave/propagation/Propagation$KeyFactory;

    return-void
.end method


# virtual methods
.method public abstract create(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TK;"
        }
    .end annotation
.end method
