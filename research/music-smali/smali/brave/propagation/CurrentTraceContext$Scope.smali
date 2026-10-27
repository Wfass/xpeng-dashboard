.class public interface abstract Lbrave/propagation/CurrentTraceContext$Scope;
.super Ljava/lang/Object;
.source "CurrentTraceContext.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/propagation/CurrentTraceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Scope"
.end annotation


# static fields
.field public static final NOOP:Lbrave/propagation/CurrentTraceContext$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lbrave/propagation/CurrentTraceContext$Scope$1;

    invoke-direct {v0}, Lbrave/propagation/CurrentTraceContext$Scope$1;-><init>()V

    sput-object v0, Lbrave/propagation/CurrentTraceContext$Scope;->NOOP:Lbrave/propagation/CurrentTraceContext$Scope;

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method
